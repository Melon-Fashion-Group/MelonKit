//
//  MLNTimeMeasurement.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTimeMeasurement

///
/// A class that implements the ability to measure the execution time of a block of code.
///
@available(iOS 17.0, *)
public final class MLNTimeMeasurement: MLNTimeMeasurable {

    // MARK: - Public methods

    ///
    /// A method that allows you to measure the execution time of a block of code with a specified accuracy and print the execution result to the console.
    ///
    /// Example:
    ///
    ///     MLNTimeMeasurement.measure(id: "TestMeasure", precision: .single) {
    ///         let array = Array(repeating: 10, count: 10_000)
    ///     }
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - id: A string identifier to identify the executed block. The default value is `.empty`.
    ///    - precision: Measurement accuracy. The default value is 2 decimal places.
    ///    - block: Block of code for measuring execution time.
    ///
    public static func measure(
        id: String = .empty,
        precision: Precision = .double,
        _ block: () -> Void
    ) {
        let startTime = CFAbsoluteTimeGetCurrent()

        block()

        let elapsedTime = CFAbsoluteTimeGetCurrent() - startTime

        let footer = id.isEmpty ? String.empty : " \"\(id)\""

        print("Time elapsed \(String(format: precision.format, elapsedTime)) s. when executing a block\(footer)")
    }



    ///
    /// A method that allows you to measure the execution time of a block of code with a specified accuracy and return the measurement result.
    ///
    /// Example:
    ///
    ///     let result = MLNTimeMeasurement.measure(precision: .single) {
    ///         let array = Array(repeating: 10, count: 10_000)
    ///     }
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - precision: Measurement accuracy. The default value is 2 decimal places.
    ///    - block: Block of code for measuring execution time.
    ///
    /// - Returns: String with execution time.
    ///
    public static func measure(
        precision: Precision = .double,
        _ block: () -> Void
    ) -> String {
        let startTime = CFAbsoluteTimeGetCurrent()

        block()

        let elapsedTime = CFAbsoluteTimeGetCurrent() - startTime

        return "\(String(format: precision.format, elapsedTime)) s."
    }



    // MARK: - Init

    private init() { }
}
