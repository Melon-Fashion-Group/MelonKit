//
//  MLNDevice.General.ThermalState.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.General.ThermalState

@available(iOS 17.0, *)
extension MLNDevice.General {

    // MARK: - Public enumerations

    ///
    /// List of device thermal states.
    ///
    public enum ThermalState: Int {

        ///
        /// The thermal state is within normal limits.
        ///
        case nominal

        ///
        /// The thermal state is slightly elevated.
        ///
        case fair

        ///
        /// The thermal state is high.
        ///
        case serious

        ///
        /// The thermal state is significantly impacting the performance of the system and the device needs to cool down.
        ///
        case critical
    }
}
