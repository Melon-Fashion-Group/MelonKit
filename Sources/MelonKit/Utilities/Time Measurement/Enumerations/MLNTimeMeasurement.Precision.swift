//
//  MLNTimeMeasurement.Precision.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTimeMeasurement.Precision

@available(iOS 17.0, *)
extension MLNTimeMeasurement {

    // MARK: - Public enumerations

    ///
    ///
    ///
    public enum Precision {

        ///
        ///
        ///
        case single

        ///
        ///
        ///
        case double

        ///
        ///
        ///
        case triple

        ///
        ///
        ///
        case quadruple

        ///
        ///
        ///
        case quintuple

        ///
        ///
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
