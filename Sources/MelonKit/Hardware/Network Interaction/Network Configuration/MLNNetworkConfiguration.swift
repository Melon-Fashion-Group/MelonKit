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

@available(iOS 16.0, *)
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
    public func getURL(for endpoint: Endpoint) -> URL? {
        let components = createURLComponents(with: endpoint)

        return components.url
    }

    ///
    ///
    ///
    public func getURL(for endpoint: Endpoint, with items: URLQueryItem...) -> URL? {
        getURL(for: endpoint, with: items)
    }

    ///
    ///
    ///
    public func getURL(for endpoint: Endpoint, with items: [URLQueryItem]) -> URL? {
        let components = createURLComponents(with: endpoint)
        let componentsWithQueryItems = components.addQueryItems(items)

        return componentsWithQueryItems.url
    }



    // MARK: - Private functions

    private func createURLComponents(with endpoint: Endpoint) -> URLComponents {
        var components = URLComponents()

        components.scheme = scheme.rawValue
        components.host = createURLHost()
        components.port = port
        components.path = createURLPath(with: endpoint)

        return components
    }

    private func createURLHost() -> String {
        let test = test.isEmpty ? .empty : "\(test)."
        let prefix = prefix.isEmpty ? .empty : "\(prefix)."
        let name = name.isEmpty ? .empty : "\(name)."

        return "\(test)\(prefix)\(name)\(domain)"
    }

    private func createURLPath(with endpoint: Endpoint) -> String {
        let path = path.isEmpty ? .empty : "/\(path)"
        let anchor = anchor.isEmpty ? .empty : "/\(anchor)"
        let endpoint = endpoint.rawValue.isEmpty ? .empty : "/\(endpoint.rawValue)"

        return "\(path)\(anchor)\(endpoint)/"
    }
}
