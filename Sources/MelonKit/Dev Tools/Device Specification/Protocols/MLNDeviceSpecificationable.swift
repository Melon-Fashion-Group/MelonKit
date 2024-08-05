//
//  MLNDeviceSpecificationable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDeviceSpecificationable

///
/// A protocol that describes information about the current device, as well as its hardware and software.
///
@available(iOS 17.0, *)
public protocol MLNDeviceSpecificationable: MLNServiceable {

    // MARK: - Public properties

    ///
    /// A shared property that allows you to access the properties and methods of the service.
    ///
    static var current: MLNDeviceSpecificationable { get }

    ///
    /// A property that allows you to obtain general information about the current device.
    ///
    var general: MLNDevice.General? { get }

    ///
    /// A property that allows you to obtain information about the operating system on the current device.
    ///
    var operatingSystem: MLNDevice.OperatingSystem? { get }

    ///
    /// A property that allows you to obtain information about the software of the current device.
    ///
    var software: MLNDevice.Software? { get }

    ///
    /// A property that allows you to obtain information about the hardware of the current device.
    ///
    var hardware: MLNDevice.Hardware? { get }

    ///
    /// A property that allows you to obtain information about all/specifications of the current device.
    ///
    var specification: MLNDevice.Specification? { get }
}
