//
//  Color+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - ColorConvertible

extension Color: ColorConvertible {

    // MARK: - Init

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public init?(hex hexString: String) {
        guard let color = HexConverter.getColor(from: hexString) else {
            return nil
        }

        self = color
    }

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public init?(hex hexString: String?) {
        guard let hexString else { return nil }

        self.init(hex: hexString)
    }



    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public func toHexString(isAlphaChannelNeeded: Bool = false) -> String? {
        HexConverter.getString(from: self, isAlphaChannelNeeded: isAlphaChannelNeeded)
    }
}
