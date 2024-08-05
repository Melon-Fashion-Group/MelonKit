//
//  MLNFramework+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - CustomStringConvertible

@available(iOS 17.0, *)
extension MLNFramework: CustomStringConvertible {

    // MARK: - Public properties

    ///
    /// A textual representation of the framework version.
    ///
    public var description: String {
        "\(version.major).\(version.minor).\(version.patch)"
    }
}
