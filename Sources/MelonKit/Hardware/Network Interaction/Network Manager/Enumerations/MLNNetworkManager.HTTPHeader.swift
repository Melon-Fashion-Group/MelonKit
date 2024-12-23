//
//  MLNNetworkManager.HTTPHeader.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 23.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkManager.HTTPHeader

extension MLNNetworkManager {

    ///
    ///
    ///
    public struct HTTPHeader {

        // MARK: - Public properties

        let name: String
        let value: String
    }
}

extension MLNNetworkManager.HTTPHeader {

    // MARK: - Public methods

    ///
    ///
    ///
    public static func accept(_ value: String) -> Self {
        .init(name: "Accept", value: value)
    }

    ///
    ///
    ///
    public static func acceptCharset(_ value: String) -> Self {
        .init(name: "Accept-Charset", value: value)
    }

    ///
    ///
    ///
    public static func acceptLanguage(_ value: String) -> Self {
        .init(name: "Accept-Language", value: value)
    }

    ///
    ///
    ///
    public static func acceptEncoding(_ value: String) -> Self {
        .init(name: "Accept-Encoding", value: value)
    }

    ///
    ///
    ///
    public static func authorization(username: String, password: String) -> Self {
        let credential = "\(username):\(password)"
        let data = Data(credential.utf8)

        return authorization("Basic \(data.base64EncodedString())")
    }

    ///
    ///
    ///
    public static func authorization(bearer token: String) -> Self {
        authorization("Bearer \(token)")
    }

    ///
    ///
    ///
    public static func authorization(_ value: String) -> Self {
        .init(name: "Authorization", value: value)
    }

    ///
    ///
    ///
    public static func contentDisposition(_ value: String) -> Self {
        .init(name: "Content-Disposition", value: value)
    }

    ///
    ///
    ///
    public static func contentType(_ value: String) -> Self {
        .init(name: "Content-Type", value: value)
    }

    ///
    ///
    ///
    public static func contentLength(_ value: String) -> Self {
        .init(name: "Content-Length", value: value)
    }

    ///
    ///
    ///
    public static func userAgent(_ value: String) -> Self {
        .init(name: "User-Agent", value: value)
    }

    ///
    ///
    ///
    public static func custom(name: String, value: String) -> Self {
        .init(name: name, value: value)
    }

    ///
    ///
    ///
    public static func xClientSource(_ value: String) -> Self {
        .init(name: "x-client-source", value: value)
    }

    ///
    ///
    ///
    public static func xRefreshToken(_ value: String) -> Self {
        .init(name: "x-refresh-token", value: value)
    }
}
