//
//  MLNNetworkManager.HTTPMethod.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 23.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkManager.HTTPMethod

extension MLNNetworkManager {

    ///
    ///
    ///
    public enum HTTPMethod: String {

        ///
        ///
        ///
        case delete

        ///
        ///
        ///
        case get

        ///
        ///
        ///
        case patch

        ///
        ///
        ///
        case post

        ///
        ///
        ///
        case put



        // MARK: - Public properties

        var name: String {
            self.rawValue.uppercased()
        }
    }
}
