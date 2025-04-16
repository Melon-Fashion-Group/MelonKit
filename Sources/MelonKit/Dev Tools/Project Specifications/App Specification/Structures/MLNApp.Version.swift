//
//  MLNApp.Version.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNApp.Version

@available(iOS 17.0, *)
extension MLNApp {

    ///
    ///
    ///
    public struct Version {

        // MARK: - Public properties

        ///
        ///
        ///
        public let major: UInt16

        ///
        ///
        ///
        public let minor: UInt16

        ///
        ///
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
