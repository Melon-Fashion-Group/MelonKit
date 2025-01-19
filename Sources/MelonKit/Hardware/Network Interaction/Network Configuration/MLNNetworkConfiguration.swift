//
//  MLNNetworkConfiguration.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkConfiguration

@available(iOS 17.0, *)
open class MLNNetworkConfiguration: MLNNetworkConfigurable {

    // MARK: - Public properties

    ///
    ///
    ///
    open var scheme: Scheme { .https }

    ///
    ///
    ///
    open var test: StaticString { .empty }

    ///
    ///
    ///
    open var prefix: StaticString { .empty }

    ///
    ///
    ///
    open var name: StaticString { .empty }

    ///
    ///
    ///
    open var domain: StaticString { .empty }

    ///
    ///
    ///
    open var port: Int? { nil }

    ///
    ///
    ///
    open var path: StaticString { .empty }

    ///
    ///
    ///
    open var anchor: StaticString { .empty }



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func getURL(for endpoint: MLNNetworkConfiguration.Endpoint) -> URL? {
        getURL(for: endpoint, appending: .empty, using: nil)
    }

    ///
    ///
    ///
    public func getURL(for endpoint: MLNNetworkConfiguration.Endpoint, appending path: String) -> URL? {
        getURL(for: endpoint, appending: path, using: nil)
    }

    ///
    ///
    ///
    public func getURL(for endpoint: MLNNetworkConfiguration.Endpoint, using items: [URLQueryItem]?) -> URL? {
        getURL(for: endpoint, appending: .empty, using: items)
    }

    ///
    ///
    ///
    public func getURL(
        for endpoint: MLNNetworkConfiguration.Endpoint,
        appending path: String,
        using items: [URLQueryItem]?
    ) -> URL? {
        let components = createURLComponents(for: endpoint, with: path)
        let componentsWithQueryItems = components.addQueryItems(items)

        return componentsWithQueryItems.url
    }



    // MARK: - Private functions

    private func createURLComponents(for endpoint: Endpoint, with path: String) -> URLComponents {
        var components = URLComponents()

        components.scheme = scheme.rawValue
        components.host = createURLHost()
        components.port = port
        components.path = createURLPath(for: endpoint, with: path)

        return components
    }

    private func createURLHost() -> String {
        let test = test.isEmpty ? .empty : "\(test)."
        let prefix = prefix.isEmpty ? .empty : "\(prefix)."
        let name = name.isEmpty ? .empty : "\(name)."

        return "\(test)\(prefix)\(name)\(domain)"
    }

    private func createURLPath(for endpoint: Endpoint, with path: String) -> String {
        let startPath = self.path.isEmpty ? .empty : "/\(self.path)"
        let anchor = anchor.isEmpty ? .empty : "/\(anchor)"
        let endpoint = endpoint.rawValue.isEmpty ? .empty : "/\(endpoint.rawValue)"
        let endPath = path.isEmpty ? .empty : "/\(path)"

        return "\(startPath)\(anchor)\(endpoint)\(endPath)"
    }
}
