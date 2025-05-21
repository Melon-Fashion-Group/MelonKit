//
//  MLNNetworkManageable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 23.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkManageable

///
///
///
@available(iOS 17.0, *)
public protocol MLNNetworkManageable: AnyObject, Sendable {

    // MARK: - Public methods

    ///
    ///
    ///
    func request(
        _ method: MLNNetworkManager.HTTPMethod,
        timeout: TimeInterval,
        for url: URL,
        with headers: [MLNNetworkManager.HTTPHeader],
        using body: Data?
    ) async throws(MLNNetworkError) -> Data

    ///
    ///
    ///
    func request<Object: Decodable>(
        _ method: MLNNetworkManager.HTTPMethod,
        timeout: TimeInterval,
        for url: URL,
        with headers: [MLNNetworkManager.HTTPHeader],
        using body: Data?
    ) async throws(MLNNetworkError) -> Object
}
