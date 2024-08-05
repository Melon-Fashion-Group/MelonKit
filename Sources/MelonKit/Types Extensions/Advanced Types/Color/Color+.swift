//
//  Color+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNColorConvertible

extension Color: MLNColorConvertible {

    // MARK: - Init

    ///
    /// An initializer that allows you to get a color from a string in hexadecimal notation.
    ///
    /// Example:
    ///
    ///     let color = Color(hex: "#cf082d")
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - hexString: A string with a color value in hexadecimal.
    ///
    @available(iOS 17.0, *)
    public init?(hex hexString: String) {
        guard let color = HexConverter.getColor(from: hexString) else {
            return nil
        }

        self = color
    }



    // MARK: - Public methods

    ///
    /// A method to convert a color to a hexadecimal string.
    ///
    /// Example:
    ///
    ///     let hexString = color.toHexString()
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - isAlphaChannelNeeded: A value that determines whether the alpha channel should be saved. The default value is `false`.
    ///
    /// - Returns: A string containing the color value in hexadecimal, or nil if the color conversion failed.
    ///
    @available(iOS 17.0, *)
    public func toHexString(isAlphaChannelNeeded: Bool = false) -> String? {
        HexConverter.getString(from: self, isAlphaChannelNeeded: isAlphaChannelNeeded)
    }
}
