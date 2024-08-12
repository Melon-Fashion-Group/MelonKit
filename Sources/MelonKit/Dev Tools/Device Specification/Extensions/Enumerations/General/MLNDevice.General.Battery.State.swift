//
//  MLNDevice.General.Battery.State.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.General.Battery.State

extension MLNDevice.General.Battery {

    // MARK: - Public enumerations

    ///
    /// List of device battery states.
    ///
    public enum State: Int {

        ///
        /// The battery state for the device can’t be determined.
        ///
        case unknown

        ///
        /// The device isn’t plugged into power. The battery is discharging.
        ///
        case unplugged

        ///
        /// The device is plugged into power and the battery is less than 100% charged.
        ///
        case charging

        ///
        /// The device is plugged into power and the battery is 100% charged.
        ///
        case full
    }
}
