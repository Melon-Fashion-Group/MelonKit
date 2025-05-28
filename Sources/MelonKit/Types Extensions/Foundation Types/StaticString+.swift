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
    @available(iOS 17.0, *)
    public static let empty: Self = .init()

    ///
    ///
    ///
    @available(iOS 17.0, *)
    public var isEmpty: Bool {
        self == .empty
    }
}



// MARK: - Equatable

extension StaticString: @retroactive Equatable {

    // MARK: - Public methods

    @available(iOS 17.0, *)
    public static func == (_ lhs: Self, _ rhs: Self) -> Bool {
        "\(lhs)" == "\(rhs)"
    }
}
