//
//  MLNApp+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - CustomStringConvertible

extension MLNApp: CustomStringConvertible {

    // MARK: - Public properties

    ///
    /// A textual representation of the app version.
    ///
    public var description: String {
        "\(version.major).\(version.minor).\(version.patch)"
    }
}
