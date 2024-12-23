//
//  MLNKeychainReplaceable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNKeychainReplaceable

///
///
///
@available(iOS 16.0, *)
@MainActor public protocol MLNKeychainReplaceable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func replace<Object: MLNDataEncodable>(_ object: Object, for service: String, with account: String) -> Bool
}
