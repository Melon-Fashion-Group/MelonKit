//
//  MLNNetworkManager.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 23.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkManager

///
///
///
@available(iOS 17.0, *)
@MainActor public final class MLNNetworkManager {

    // MARK: - Private properties

    private let session: URLSession
    private let decoder: JSONDecoder
    private let isNetworkDisconnectWhenVPNIsEnabled: Bool

    private let connection = MLNNetworkConnection()

    private var isNetworkDisconnected: Bool {
        isNetworkDisconnectWhenVPNIsEnabled ? connection.isVPNEnabled : false
    }



    // MARK: - Init

    ///
    ///
    ///
    public init(
        session: URLSession = .shared,
        decoder: JSONDecoder = .init(),
        disconnectWhenVPNIsEnabled isNetworkDisconnectWhenVPNIsEnabled: Bool = false
    ) {
        self.session = session
        self.decoder = decoder
        self.isNetworkDisconnectWhenVPNIsEnabled = isNetworkDisconnectWhenVPNIsEnabled
    }



    // MARK: - Private functions

    private func createRequest(
        method: HTTPMethod,
        timeout: TimeInterval,
        url: URL,
        headers: [HTTPHeader],
        body: Data?
    ) -> URLRequest {
        var request = URLRequest(url: url)

        request.httpMethod = method.name
        request.timeoutInterval = timeout
        request.allHTTPHeaderFields = mapHeadersToDictionary(headers)
        request.httpBody = body

        return request
    }

    private func mapHeadersToDictionary(_ headers: [HTTPHeader]) -> [String: String] {
        headers.reduce(into: [:]) { $0[$1.name] = $1.value }
    }
}



// MARK: - MLNNetworkManageable

@available(iOS 17.0, *)
extension MLNNetworkManager: MLNNetworkManageable {

    // MARK: - Public methods

    ///
    ///
    ///
    public func request(
        _ method: HTTPMethod = .get,
        timeout: TimeInterval = 30,
        for url: URL,
        with headers: [HTTPHeader] = [],
        using body: Data? = nil
    ) async throws(MLNNetworkError) -> Data {
        guard !isNetworkDisconnected else {
            throw .vpnEnabled
        }

        let request = createRequest(method: method, timeout: timeout, url: url, headers: headers, body: body)

        guard
            let (data, response) = try? await session.data(for: request),
            let httpResponse = response as? HTTPURLResponse
        else {
            throw .unknown
        }

        guard let statusCode = MLNNetworkError.HTTPStatusCode(rawValue: httpResponse.statusCode) else {
            throw .unsuccessfulStatusCode(.unknown)
        }

        guard statusCode.isSuccess else {
            throw .unsuccessfulStatusCode(statusCode)
        }

        return data
    }

    ///
    ///
    ///
    public func request<Object: Decodable>(
        _ method: HTTPMethod = .get,
        timeout: TimeInterval = 30,
        for url: URL,
        with headers: [HTTPHeader] = [],
        using body: Data? = nil
    ) async throws(MLNNetworkError) -> Object {
        let data = try await request(method, timeout: timeout, for: url, with: headers, using: body)

        guard let object = try? decoder.decode(Object.self, from: data) else {
            throw .decodingFormatMismatch
        }

        return object
    }
}
