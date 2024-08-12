//
//  MLNDevice.OperatingSystem.Version+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - CustomStringConvertible

extension MLNDevice.OperatingSystem.Version: CustomStringConvertible {
    
    // MARK: - Public properties

    ///
    /// A text representation of the operating system version in the major.minor.patch format.
    ///
    public var description: String {
        "\(major).\(minor).\(patch)"
    }
}
