//
//  MLNDevice.Hardware.CPU.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.Hardware.CPU

extension MLNDevice.Hardware {

    // MARK: - Public structures

    ///
    /// A structure describing information about RAM.
    ///
    public struct RAM {

        // MARK: - Public properties

        ///
        /// A value that indicates whether the GPU shares all of its memory with the CPU.
        ///
        public let isUnified: Bool

        ///
        /// The amount of physical memory on the computer in megabytes.
        ///
        public let physicalSize: UInt64



        // MARK: - Init

        init(
            isUnified: Bool,
            physicalSize: UInt64
        ) {
            self.isUnified = isUnified
            self.physicalSize = MLNBytesRepresentation.asMegabytes(physicalSize)
        }
    }
}
