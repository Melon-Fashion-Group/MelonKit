//
//  MLNFramework+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 22.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - CustomStringConvertible

extension MLNFramework: CustomStringConvertible {

    // MARK: - Public properties

    ///
    /// A textual representation of the framework version.
    ///
    public var description: String {
        "\(version.major).\(version.minor).\(version.patch)"
    }
}
