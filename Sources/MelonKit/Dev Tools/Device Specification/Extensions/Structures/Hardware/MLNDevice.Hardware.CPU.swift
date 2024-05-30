//
//  MLNDevice.Hardware.CPU.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.Hardware.CPU

extension MLNDevice.Hardware {

    // MARK: - Public structures

    ///
    /// A structure describing information about the CPU.
    ///
    public struct CPU {

        // MARK: - Public properties

        ///
        /// The name of the CPU in the device.
        ///
        public let name: String

        ///
        /// The number of CPU cores in the device.
        ///
        public let numberOfCores: UInt8



        // MARK: - Init

        init(
            name: String,
            numberOfCores: Int
        ) {
            self.name = name
            self.numberOfCores = .init(numberOfCores)
        }
    }
}
