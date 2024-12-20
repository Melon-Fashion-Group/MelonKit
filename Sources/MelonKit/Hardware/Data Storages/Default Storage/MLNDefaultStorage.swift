//
//  MLNDefaultStorage.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDefaultStorage

///
///
///
@available(iOS 16.0, *)
public final class MLNDefaultStorage {

    // MARK: - Private properties

    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()

    private let userDefaults = UserDefaults.standard



    // MARK: - Init

    ///
    ///
    ///
    public init() { }
}



// MARK: - MLNDefaultLoadable

extension MLNDefaultStorage: MLNDefaultLoadable {

    // MARK: - Public methods

    ///
    ///
    ///
    public func load<Object: MLNDataDecodable>(_ type: Object.Type, for key: String) -> Object? {
        guard
            let object = userDefaults.object(forKey: key) as? Data,
            let loadedObject = try? decoder.decode(type, from: object)
        else {
            return nil
        }

        return loadedObject
    }
}



// MARK: - MLNDefaultRemovable

extension MLNDefaultStorage: MLNDefaultRemovable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func remove(for key: String) -> Bool {
        userDefaults.removeObject(forKey: key)

        return true
    }

    ///
    ///
    ///
    @discardableResult
    public func removeAll() -> Bool {
        guard let bundleID = Bundle.main.bundleIdentifier else {
            return false
        }

        userDefaults.removePersistentDomain(forName: bundleID)

        userDefaults.synchronize()

        return true
    }
}



// MARK: - MLNDefaultReplaceable

extension MLNDefaultStorage: MLNDefaultReplaceable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func replace<Object: MLNDataEncodable>(_ object: Object, for key: String) -> Bool {
        save(object, for: key)
    }
}



// MARK: - MLNDefaultSaveable

extension MLNDefaultStorage: MLNDefaultSaveable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func save<Object: MLNDataEncodable>(_ object: Object, for key: String) -> Bool {
        guard let data = try? encoder.encode(object) else {
            return false
        }

        userDefaults.set(data, forKey: key)

        return true
    }
}
