//
//  MLNDeviceSpecificationable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 02.04.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDeviceSpecificationable

///
///
///
@available(iOS 17.0, *)
public protocol MLNDeviceSpecificationable: AnyObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var physicalMemory: UInt64 { get }

    ///
    ///
    ///
    var isLowPowerEnabled: Bool { get }
}
