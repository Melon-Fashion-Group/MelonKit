//
//  ColorConvertible.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - ColorConvertible

@available(iOS 17.0, *)
protocol ColorConvertible {

    // MARK: - Init

    init?(hex hexString: String)



    // MARK: - Public methods

    func toHexString(isAlphaChannelNeeded: Bool) -> String?
}
