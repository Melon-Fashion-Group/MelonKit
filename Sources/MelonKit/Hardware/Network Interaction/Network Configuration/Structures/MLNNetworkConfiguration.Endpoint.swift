//
//  MLNNetworkConfiguration.Endpoint.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkConfiguration.Endpoint

@available(iOS 17.0, *)
extension MLNNetworkConfiguration {

    ///
    ///
    ///
    public struct Endpoint: RawRepresentable, Sendable {

        // MARK: - Public properties

        ///
        ///
        ///
        public static let main = Self(rawValue: .empty)

        ///
        ///
        ///
        public let rawValue: StaticString



        // MARK: - Init

        ///
        ///
        ///
        public init(rawValue: StaticString) {
            self.rawValue = rawValue
        }
    }
}
