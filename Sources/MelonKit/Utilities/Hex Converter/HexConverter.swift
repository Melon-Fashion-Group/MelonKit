//
//  HexConverter.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - HexConverter

@available(iOS 17.0, *)
final class HexConverter: HexConvertible {

    // MARK: - Init

    private init() { }



    // MARK: - Public methods

    static func getColor(from hexString: String) -> Color? {
        let clearedHexString = getClearedHexString(from: hexString)

        let scanner = Scanner(string: clearedHexString)

        var rgbValue: UInt64 = .zero
        guard scanner.scanHexInt64(&rgbValue) else {
            return nil
        }

        let redComponent, greenComponent, blueComponent, alphaChannel: UInt64
        switch clearedHexString.count {
        case 3: // RGB (12-bit)
            redComponent = (rgbValue >> 8) * 17
            greenComponent = (rgbValue >> 4 & 0xF) * 17
            blueComponent = (rgbValue & 0xF) * 17
            alphaChannel = 255
        case 6: // RGB (24-bit)
            redComponent = rgbValue >> 16
            greenComponent = rgbValue >> 8 & 0xFF
            blueComponent = rgbValue & 0xFF
            alphaChannel = 255
        case 8: // RGBA (32-bit)
            redComponent = rgbValue >> 16 & 0xFF
            greenComponent = rgbValue >> 8 & 0xFF
            blueComponent = rgbValue & 0xFF
            alphaChannel = rgbValue >> 24
        default:
            return nil
        }

        let red = convertUInt64ToCGFloat(redComponent)
        let green = convertUInt64ToCGFloat(greenComponent)
        let blue = convertUInt64ToCGFloat(blueComponent)
        let alpha = convertUInt64ToCGFloat(alphaChannel)

        let uiColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)

        return .init(uiColor: uiColor)
    }

    static func getString(from color: Color, isAlphaChannelNeeded: Bool) -> String? {
        let convertibleColor = UIColor(color)

        guard let colorComponents = convertibleColor.cgColor.components else {
            return nil
        }

        let redComponent = Int(colorComponents[0] * 255)
        let greenComponent = Int(colorComponents[1] * 255)
        let blueComponent = Int(colorComponents[2] * 255)

        guard
            isAlphaChannelNeeded,
            let alphaComponent = colorComponents.last
        else {
            return .init(format: "#%02X%02X%02X", redComponent, greenComponent, blueComponent)
        }

        let alphaChannel = Int(alphaComponent * 255)

        return .init(format: "#%02X%02X%02X%02X", redComponent, greenComponent, blueComponent, alphaChannel)
    }



    // MARK: - Private functions

    private static func getClearedHexString(from hexString: String) -> String {
        var trimmedHexString = hexString
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased()

        if trimmedHexString.hasPrefix("#") {
            trimmedHexString.removeFirst()
        }

        return trimmedHexString
    }

    private static func convertUInt64ToCGFloat(_ value: UInt64) -> CGFloat {
        .init(value) / 255
    }
}
