//
//  MLNKeychainSaveable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNKeychainSaveable

///
///
///
@available(iOS 17.0, *)
@MainActor public protocol MLNKeychainSaveable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func save<Object: MLNDataEncodable>(_ object: Object, for service: String, with account: String) -> Bool
}
