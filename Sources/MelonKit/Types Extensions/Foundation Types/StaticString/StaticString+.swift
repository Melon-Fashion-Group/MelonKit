//
//  StaticString+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - StaticString+

extension StaticString {

    // MARK: - Public properties

    ///
    /// A property of a static string that allows you to conveniently specify its emptiness.
    ///
    @available(iOS 16.0, *)
    public static let empty: Self = .init()
}