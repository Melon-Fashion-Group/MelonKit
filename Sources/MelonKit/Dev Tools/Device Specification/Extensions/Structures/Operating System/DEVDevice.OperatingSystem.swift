//
//  MLNDevice.OperatingSystem.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.OperatingSystem

extension MLNDevice {

    // MARK: - Public structures

    ///
    /// A structure that describes an operating system.
    ///
    public struct OperatingSystem {

        // MARK: - Public properties

        ///
        /// Operating system name.
        ///
        public let name: Name

        ///
        /// Full name of the operating system.
        ///
        public let fullname: String

        ///
        /// Operating system version.
        ///
        public let version: Version
    }
}
