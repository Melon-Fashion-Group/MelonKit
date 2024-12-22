//
//  MLNTimeMeasurement.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTimeMeasurement

///
///
///
@available(iOS 16.0, *)
public final class MLNTimeMeasurement: MLNTimeMeasurable {

    // MARK: - Public methods

    ///
    ///
    ///
    public static func measure(
        id: String = .empty,
        precision: Precision = .double,
        _ block: () -> Void
    ) {
        let startTime = DispatchTime.now().uptimeNanoseconds

        block()

        let endTime = DispatchTime.now().uptimeNanoseconds

        let elapsedTime = Double(endTime - startTime) / 1E9

        let footer = id.isEmpty ? String.empty : " \"\(id)\""

        print("Time elapsed \(String(format: precision.format, elapsedTime)) s. when executing a block\(footer)")
    }



    ///
    ///
    ///
    public static func measure(
        precision: Precision = .double,
        _ block: () -> Void
    ) -> String {
        let startTime = DispatchTime.now().uptimeNanoseconds

        block()

        let endTime = DispatchTime.now().uptimeNanoseconds

        let elapsedTime = Double(endTime - startTime) / 1E9

        return "\(String(format: precision.format, elapsedTime)) s."
    }



    // MARK: - Init

    private init() { }
}
