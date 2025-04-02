//
//  MLNDeviceSpecification.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 02.04.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDeviceSpecification

///
///
///
@available(iOS 17.0, *)
public final class MLNDeviceSpecification: MLNDeviceSpecificationable {

    // MARK: - Public properties

    ///
    ///
    ///
    public var physicalMemory: UInt64 {
        processInfo.physicalMemory
    }

    public var isLowPowerEnabled: Bool {
        processInfo.isLowPowerModeEnabled
    }



    // MARK: - Private properties

    private let processInfo = ProcessInfo()



    // MARK: - Init

    ///
    ///
    ///
    public init() { }
}
