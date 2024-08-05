//
//  MLNApp.Version.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNApp.Version

@available(iOS 17.0, *)
extension MLNApp {

    // MARK: - Public structures

    ///
    /// A structure describing the version of the app as a major.minor.patch.
    ///
    public struct Version {

        // MARK: - Public properties

        ///
        /// A property that allows you to get the major version of the app.
        ///
        public let major: UInt16

        ///
        /// A property that allows you to get the minor version of the app.
        ///
        public let minor: UInt16

        ///
        /// A property that allows you to get a patch version of the app.
        ///
        public let patch: UInt16



        // MARK: - Init

        init(
            major: UInt16 = .zero,
            minor: UInt16 = .zero,
            patch: UInt16 = .zero
        ) {
            self.major = major
            self.minor = minor
            self.patch = patch
        }
    }
}
