//
//  MLNDevice.Hardware.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.Hardware

@available(iOS 17.0, *)
extension MLNDevice {

    // MARK: - Public structures

    ///
    /// A structure that describes hardware information.
    ///
    public struct Hardware {

        // MARK: - Public properties

        ///
        /// CPU information.
        ///
        public let cpu: CPU

        ///
        /// RAM information.
        ///
        public let ram: RAM

        ///
        /// GPU information.
        ///
        public let gpu: GPU
    }
}
