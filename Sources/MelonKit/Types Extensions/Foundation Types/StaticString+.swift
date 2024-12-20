//
//  StaticString+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - StaticString+

extension StaticString {

    // MARK: - Public properties

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public static let empty: Self = .init()

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public var isEmpty: Bool {
        self == .empty
    }
}



// MARK: - Equatable

extension StaticString: @retroactive Equatable {

    // MARK: - Public methods

    public static func == (_ lhs: Self, _ rhs: Self) -> Bool {
        "\(lhs)" == "\(rhs)"
    }
}
