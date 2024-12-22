//
//  MLNTimeMeasurable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTimeMeasurable

///
///
///
@available(iOS 16.0, *)
public protocol MLNTimeMeasurable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    static func measure(id: String, precision: MLNTimeMeasurement.Precision, _ block: () -> Void)

    ///
    ///
    ///
    static func measure(precision: MLNTimeMeasurement.Precision, _ block: () -> Void) -> String
}
