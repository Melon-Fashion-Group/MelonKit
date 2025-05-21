//
//  MLNKeychainRemovable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNKeychainRemovable

///
///
///
@available(iOS 17.0, *)
public protocol MLNKeychainRemovable: AnyObject, Sendable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func remove(for service: String, with account: String) -> Bool

    ///
    ///
    ///
    @discardableResult
    func removeAll() -> Bool
}
