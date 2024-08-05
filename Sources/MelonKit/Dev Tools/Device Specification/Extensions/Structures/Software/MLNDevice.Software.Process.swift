//
//  MLNDevice.Software.Process.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.Software.Process

@available(iOS 17.0, *)
extension MLNDevice.Software {

    // MARK: - Public structures

    ///
    /// A structure describing a running process.
    ///
    public struct Process {

        // MARK: - Public properties

        ///
        /// The name of the process.
        ///
        public let name: String

        ///
        /// The identifier of the process (often called process ID).
        ///
        public let identifier: Int32
    }
}
