//
//  MLNDevice.OperatingSystem.Name.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.OperatingSystem.Name

@available(iOS 17.0, *)
extension MLNDevice.OperatingSystem {

    // MARK: - Public enumerations

    ///
    /// List of operating system names.
    ///
    public enum Name: String {

        ///
        /// Operating system for iPhone.
        ///
        case iOS

        ///
        /// Operating system for iPad.
        ///
        case iPadOS
    }
}
