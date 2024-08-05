//
//  MLNDevice.Software.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.Software

@available(iOS 17.0, *)
extension MLNDevice {

    // MARK: - Public structures

    ///
    /// A structure describing the device software.
    ///
    public struct Software {

        // MARK: - Public properties

        ///
        /// Information about the process running on the device.
        ///
        public let process: Process

        ///
        /// A value that indicates whether the process is running in the simulator environment.
        ///
        public let isSimulatorEnvironment: Bool

        ///
        /// A value that indicates the current state of Low Power Mode.
        ///
        public let isLowPowerModeEnabled: Bool
    }
}
