//
//  MLNKeychainStorage.swift
//  MelonKit
//
//  Created by Dimka Novikov on 11.02.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNKeychainStorage

///
///
///
@available(iOS 16.0, *)
public final class MLNKeychainStorage {

    // MARK: - Private properties

    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()

    private let cloudSaving: CloudSaving



    // MARK: - Init

    ///
    /// Cloud Saving .enable with accessGroup as "XXXXXX.com.domain.app-name" where XXXXXX = ur team id in app store connect
    ///
    public init(cloudSaving: CloudSaving = .disable) {
        self.cloudSaving = cloudSaving
    }



    // MARK: - Private functions

    private func load(service: String, account: String) -> Data? {
        let query: CFDictionary

        switch cloudSaving {
        case .disable:
            query = [
                kSecClass: kSecClassGenericPassword,
                kSecReturnData: kCFBooleanTrue!,
                kSecAttrService: service,
                kSecAttrAccount: account,
                kSecMatchLimit: kSecMatchLimitOne
            ] as CFDictionary
        case .enable(let accessGroup):
            query = [
                kSecClass: kSecClassGenericPassword,
                kSecReturnData: kCFBooleanTrue!,
                kSecAttrService: service,
                kSecAttrAccount: account,
                kSecMatchLimit: kSecMatchLimitOne,
                kSecAttrSynchronizable: kCFBooleanTrue!,
                kSecAttrAccessGroup: accessGroup
            ] as CFDictionary
        }

        var item: CFTypeRef?

        let copyingStatus = SecItemCopyMatching(query, &item)

        guard
            copyingStatus == errSecSuccess,
            let data = item as? Data
        else {
            return nil
        }

        return data
    }

    private func remove(service: String, account: String) -> Bool {
        let query: CFDictionary

        switch cloudSaving {
        case .disable:
            query = [
                kSecClass: kSecClassGenericPassword,
                kSecAttrService: service,
                kSecAttrAccount: account
            ] as CFDictionary
        case .enable(let accessGroup):
            query = [
                kSecClass: kSecClassGenericPassword,
                kSecAttrService: service,
                kSecAttrAccount: account,
                kSecAttrSynchronizable: kCFBooleanTrue!,
                kSecAttrAccessGroup: accessGroup
            ] as CFDictionary
        }

        let deletionStatus = SecItemDelete(query)

        guard deletionStatus == errSecSuccess else {
            return false
        }

        return true
    }

    private func save(_ data: Data, service: String, account: String) -> Bool {
        let query: CFDictionary

        switch cloudSaving {
        case .disable:
            query = [
                kSecClass: kSecClassGenericPassword,
                kSecValueData: data,
                kSecAttrService: service,
                kSecAttrAccount: account
            ] as CFDictionary
        case .enable(let accessGroup):
            query = [
                kSecClass: kSecClassGenericPassword,
                kSecValueData: data,
                kSecAttrService: service,
                kSecAttrAccount: account,
                kSecAttrSynchronizable: kCFBooleanTrue!,
                kSecAttrAccessGroup: accessGroup
            ] as CFDictionary
        }

        let deletionStatus = SecItemDelete(query)

        guard deletionStatus == errSecSuccess else {
            return false
        }

        let additionStatus = SecItemAdd(query, nil)

        guard additionStatus == errSecSuccess else {
            return false
        }

        return true
    }
}



// MARK: - MLNKeychainLoadable

extension MLNKeychainStorage: MLNKeychainLoadable {

    // MARK: - Public methods

    ///
    ///
    ///
    public func load<Object: MLNDataDecodable>(
        _ type: Object.Type,
        for service: String,
        with account: String
    ) -> Object? {
        guard
            let data = load(service: service, account: account),
            let object = try? decoder.decode(type, from: data)
        else {
            return nil
        }

        return object
    }
}



// MARK: - MLNKeychainRemovable

extension MLNKeychainStorage: MLNKeychainRemovable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func remove(for service: String, with account: String) -> Bool {
        remove(service: service, account: account)
    }

    ///
    ///
    ///
    @discardableResult
    public func removeAll() -> Bool {
        let query: CFDictionary

        switch cloudSaving {
        case .disable:
            query = [
                kSecClass: kSecClassGenericPassword
            ] as CFDictionary
        case .enable(let accessGroup):
            query = [
                kSecClass: kSecClassGenericPassword,
                kSecAttrSynchronizable: kCFBooleanTrue!,
                kSecAttrAccessGroup: accessGroup
            ] as CFDictionary
        }

        let status = SecItemDelete(query)

        guard status == errSecSuccess else {
            return false
        }

        return true
    }
}



// MARK: - MLNKeychainReplaceable

extension MLNKeychainStorage: MLNKeychainReplaceable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func replace<Object: MLNDataEncodable>(
        _ object: Object,
        for service: String,
        with account: String
    ) -> Bool {
        save(object, for: service, with: account)
    }
}



// MARK: - MLNKeychainSaveable

extension MLNKeychainStorage: MLNKeychainSaveable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func save<Object: MLNDataEncodable>(
        _ object: Object,
        for service: String,
        with account: String
    ) -> Bool {
        guard let data = try? encoder.encode(object) else {
            return false
        }

        return save(data, service: service, account: account)
    }
}
