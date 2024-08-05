//
//  MLNTimeMeasurement.Precision.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTimeMeasurement.Precision

@available(iOS 17.0, *)
extension MLNTimeMeasurement {

    // MARK: - Public enumerations

    ///
    /// List of possible timing accuracy.
    ///
    public enum Precision {

        ///
        /// One decimal place.
        ///
        case single

        ///
        /// Two decimal places.
        ///
        case double

        ///
        /// Three decimal places.
        ///
        case triple

        ///
        /// Four decimal places.
        ///
        case quadruple

        ///
        /// Five decimal places.
        ///
        case quintuple

        ///
        /// Custom number of decimal places.
        ///
        case custom(numberOfSigns: UInt8)



        // MARK: - Public properties

        var format: String {
            switch self {
            case .single: "%.01f"
            case .double: "%.02f"
            case .triple: "%.03f"
            case .quadruple: "%.04f"
            case .quintuple: "%.05f"
            case .custom(let numberOfSigns): "%.0\(numberOfSigns)f"
            }
        }
    }
}
