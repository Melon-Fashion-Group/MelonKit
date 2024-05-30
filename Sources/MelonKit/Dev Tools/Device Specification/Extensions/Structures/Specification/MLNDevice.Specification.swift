//
//  MLNDevice.Specification.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.Software

extension MLNDevice {

    // MARK: - Public structures

    ///
    /// A structure describing the complete specification of a device.
    ///
    public struct Specification {

        // MARK: - Public properties

        ///
        /// General information about the device.
        ///
        public let general: General

        ///
        /// Information about the device's operating system.
        ///
        public let operatingSystem: OperatingSystem

        ///
        /// Information about the device software.
        ///
        public let software: Software

        ///
        /// Information about the device hardware.
        ///
        public let hardware: Hardware
    }
}
