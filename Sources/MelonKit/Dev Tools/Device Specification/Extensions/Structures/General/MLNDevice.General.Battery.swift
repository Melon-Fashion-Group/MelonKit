//
//  MLNDevice.General.Battery.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation
import UIKit




// MARK: - MLNDevice.General.Battery

@available(iOS 17.0, *)
extension MLNDevice.General {

    // MARK: - Public structures

    ///
    /// A structure that describes information about the device's battery.
    ///
    public struct Battery {

        // MARK: - Public properties

        ///
        /// The battery state for the device.
        ///
        public let state: State

        ///
        /// The battery charge level for the device.
        ///
        public let level: UInt8



        // MARK: - Init

        init(
            state: UIDevice.BatteryState,
            level: Float
        ) {
            self.state = .init(rawValue: state.rawValue) ?? .unplugged
            self.level = .init(level * 100)
        }
    }
}
