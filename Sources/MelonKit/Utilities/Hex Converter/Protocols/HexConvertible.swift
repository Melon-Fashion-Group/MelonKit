//
//  HexConvertible.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - HexConvertible

@available(iOS 16.0, *)
protocol HexConvertible: AnyObject {

    // MARK: - Public methods

    static func getColor(from hexString: String) -> Color?
    static func getString(from color: Color, isAlphaChannelNeeded: Bool) -> String?
}
