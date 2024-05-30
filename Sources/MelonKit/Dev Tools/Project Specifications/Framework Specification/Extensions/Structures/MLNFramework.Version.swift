//
//  MLNFramework.Version.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNFramework.Version

extension MLNFramework {

    // MARK: - Public structures

    ///
    /// A structure describing the version of the framework as a major.minor.patch.
    ///
    public struct Version {

        ///
        /// A property that allows you to get the major version of the framework.
        ///
        public let major: UInt16

        ///
        /// A property that allows you to get the minor version of the framework.
        ///
        public let minor: UInt16

        ///
        /// A property that allows you to get the patch version of the framework.
        ///
        public let patch: UInt16
    }
}
