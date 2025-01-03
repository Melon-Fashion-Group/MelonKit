//
//  MLNDefaultRemovable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDefaultRemovable

///
///
///
@available(iOS 17.0, *)
@MainActor public protocol MLNDefaultRemovable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func remove(for key: String) -> Bool

    ///
    ///
    ///
    @discardableResult
    func removeAll() -> Bool
}
