//
//  MLNBytesRepresentation.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNBytesRepresentation

///
/// A class that allows you to convert bytes to another available unit of measurement.
///
@available(iOS 16.0, *)
public final class MLNBytesRepresentation: MLNBytesRepresentable {

    // MARK: - Init

    private init() { }



    // MARK: - Public methods

    ///
    /// A method that allows you to convert bytes to kilobytes.
    ///
    /// Example:
    ///
    ///     let bytes: UInt64 = 4_398_046_511_104
    ///
    ///     let kilobytes = MLNBytesRepresentation.asKilobytes(bytes) // 4_294_967_296 in KB
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - bytes: Bytes to convert.
    ///
    /// - Returns: Bytes converted to kilobytes.
    ///
    public static func asKilobytes(_ bytes: UInt64) -> UInt64 {
        upToHighUnit(bytes)
    }

    ///
    /// A method that allows you to convert bytes to megabytes.
    ///
    /// Example:
    ///
    ///     let bytes: UInt64 = 4_398_046_511_104
    ///
    ///     let megabytes = MLNBytesRepresentation.asMegabytes(bytes) // 4_194_304 in MB
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - bytes: Bytes to convert.
    ///
    /// - Returns: Bytes converted to megabytes.
    ///
    public static func asMegabytes(_ bytes: UInt64) -> UInt64 {
        upToHighUnit(asKilobytes(bytes))
    }

    ///
    /// A method that allows you to convert bytes to gigabytes.
    ///
    /// Example:
    ///
    ///     let bytes: UInt64 = 4_398_046_511_104
    ///
    ///     let gigabytes = MLNBytesRepresentation.asGigabytes(bytes) // 4_096 in GB
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - bytes: Bytes to convert.
    ///
    /// - Returns: Bytes converted to gigabytes.
    ///
    public static func asGigabytes(_ bytes: UInt64) -> UInt64 {
        upToHighUnit(asMegabytes(bytes))
    }

    ///
    /// A method that allows you to convert bytes to terabytes.
    ///
    /// Example:
    ///
    ///     let bytes: UInt64 = 4_398_046_511_104
    ///
    ///     let terabytes = MLNBytesRepresentation.asTerabytes(bytes) // 4 in TB
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - bytes: Bytes to convert.
    ///
    /// - Returns: Bytes converted to terabytes.
    ///
    public static func asTerabytes(_ bytes: UInt64) -> UInt64 {
        upToHighUnit(asGigabytes(bytes))
    }



    // MARK: - Private functions

    private static func upToHighUnit(_ number: UInt64) -> UInt64 {
        number / 1_024
    }
}
