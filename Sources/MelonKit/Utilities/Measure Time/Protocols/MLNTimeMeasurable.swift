//
//  MLNTimeMeasurable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTimeMeasurable

///
/// A protocol that describes the ability to measure the execution time of a block of code.
///
@available(iOS 16.0, *)
public protocol MLNTimeMeasurable: MLNServiceable {

    // MARK: - Public methods

    ///
    /// A method that allows you to measure the execution time of a block of code with a specified accuracy and print the execution result to the console.
    ///
    static func measure(id: String, precision: MLNTimeMeasurement.Precision, _ block: () -> Void)



    ///
    /// A method that allows you to measure the execution time of a block of code with a specified accuracy and return the measurement result.
    ///
    static func measure(precision: MLNTimeMeasurement.Precision, _ block: () -> Void) -> String
}
