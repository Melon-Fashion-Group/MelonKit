//
//  MLNBytesRepresentable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNBytesRepresentable

///
/// A protocol that describes the ability to convert bytes into another available unit of measurement.
///
@available(iOS 16.0, *)
public protocol MLNBytesRepresentable: MLNServiceable {

    // MARK: - Public methods

    ///
    /// A method that allows you to convert bytes to kilobytes.
    ///
    static func asKilobytes(_ bytes: UInt64) -> UInt64

    ///
    /// A method that allows you to convert bytes to megabytes.
    ///
    static func asMegabytes(_ bytes: UInt64) -> UInt64

    ///
    /// A method that allows you to convert bytes to gigabytes.
    ///
    static func asGigabytes(_ bytes: UInt64) -> UInt64

    ///
    /// A method that allows you to convert bytes to terabytes.
    ///
    static func asTerabytes(_ bytes: UInt64) -> UInt64
}
