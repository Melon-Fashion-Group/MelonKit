//
//  MLNDevice.General.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.General

@available(iOS 17.0, *)
extension MLNDevice {

    // MARK: - Public structures

    ///
    /// A structure describing the basic data of a device.
    ///
    public struct General {

        // MARK: - Public properties

        ///
        /// Name of the current device.
        ///
        public let name: String

        ///
        /// Type of the current device.
        ///
        public let type: DeviceType

        ///
        /// Information about the device's battery.
        ///
        public let battery: Battery

        ///
        /// Thermal state of the device.
        ///
        public let thermalState: ThermalState



        // MARK: - Init

        init(
            name: String,
            type: DeviceType,
            battery: Battery,
            thermalState: ProcessInfo.ThermalState
        ) {
            self.name = name
            self.type = type
            self.battery = battery
            self.thermalState = .init(rawValue: thermalState.rawValue) ?? .nominal
        }
    }
}
