//
//  MLNDefaultSaveable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDefaultSaveable

///
///
///
@available(iOS 16.0, *)
@MainActor public protocol MLNDefaultSaveable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func save<Object: MLNDataEncodable>(_ object: Object, for key: String) -> Bool
}
