//
//  MLNDevice.Hardware.GPU.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation
import MetalKit



// MARK: - MLNDevice.Hardware.GPU

extension MLNDevice.Hardware {

    // MARK: - Public structures

    ///
    /// A structure describing information about the GPU.
    ///
    public struct GPU {

        // MARK: - Public properties

        ///
        /// The full name of the GPU device.
        ///
        public let name: String

        ///
        /// The GPU device’s registry identifier.
        ///
        public let registryID: UInt64

        ///
        /// An approximation of how much memory, in bytes, this GPU device can allocate without affecting its runtime performance.
        ///
        public let memorySize: UInt64



        // MARK: - Init

        init(
            name: String,
            registryID: UInt64,
            memorySize: UInt64
        ) {
            self.name = name
            self.registryID = registryID
            self.memorySize = MLNBytesRepresentation.asMegabytes(memorySize)
        }
    }
}
