//
//  MLNDefaultLoadable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDefaultLoadable

///
///
///
@available(iOS 16.0, *)
@MainActor public protocol MLNDefaultLoadable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    func load<Object: MLNDataDecodable>(_ type: Object.Type, for key: String) -> Object?
}
