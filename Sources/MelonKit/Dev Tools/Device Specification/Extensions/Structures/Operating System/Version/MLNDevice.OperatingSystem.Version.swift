//
//  MLNDevice.OperatingSystem.Version.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDevice.OperatingSystem.Version

extension MLNDevice.OperatingSystem {

    // MARK: - Public structures

    ///
    /// A structure describing the operating system version as major.minor.patch.
    ///
    public struct Version {

        // MARK: - Public properties

        ///
        /// A property that allows you to get a major version of the operating system.
        ///
        public let major: UInt16

        ///
        /// A property that allows you to get a minor version of the operating system.
        ///
        public let minor: UInt16

        ///
        /// A property that allows you to get a patch version of the operating system.
        ///
        public let patch: UInt16



        // MARK: - Init

        init(
            major: Int,
            minor: Int,
            patch: Int
        ) {
            self.major = .init(major)
            self.minor = .init(minor)
            self.patch = .init(patch)
        }
    }
}
