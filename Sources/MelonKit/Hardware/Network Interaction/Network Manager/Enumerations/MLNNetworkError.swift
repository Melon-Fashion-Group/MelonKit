//
//  MLNNetworkError.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 23.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkError

///
///
///
@available(iOS 17.0, *)
public enum MLNNetworkError: Error {

    ///
    ///
    ///
    case invalidToken

    ///
    ///
    ///
    case invalidURL

    ///
    ///
    ///
    case vpnEnabled

    ///
    ///
    ///
    case unknown

    ///
    ///
    ///
    case unsuccessfulStatusCode(HTTPStatusCode)

    ///
    ///
    ///
    case decodingFormatMismatch
}
