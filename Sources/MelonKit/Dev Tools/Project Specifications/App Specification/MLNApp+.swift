//
//  MLNApp+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - CustomStringConvertible

@available(iOS 17.0, *)
extension MLNApp: CustomStringConvertible {

    ///
    ///
    ///
    public var description: String {
        "\(version.major).\(version.minor).\(version.patch)"
    }
}
