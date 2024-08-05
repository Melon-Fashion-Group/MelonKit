//
//  MLNServiceContainer.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNServiceContainer

///
/// A class that implements the ability to add and extract dependencies from a DI container.
///
@available(iOS 17.0, *)
public final class MLNServiceContainer: MLNServiceContainerable {

    // MARK: - Private properties

    private static var factories: [String: () -> Any] = [:]
    private static var cache: [String: Any] = [:]



    // MARK: - Init

    private init() { }



    // MARK: - Public methods

    ///
    /// A method that allows you to add a dependency to a container.
    ///
    /// Example:
    ///
    ///     MLNServiceContainer.register(NetworkConfig.self, NetworkConfig.init())
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - type: The type of object that conforms to MLNServiceable.
    ///    - factory: An instance of the object saved to the container.
    ///
    public static func register<Service: MLNServiceable>(
        type: Service.Type,
        _ factory: @autoclosure @escaping () -> Service
    ) {
        factories[.init(describing: type.self)] = factory
    }

    ///
    /// A method that allows you to extract a dependency from a container.
    ///
    /// Example:
    ///
    ///     MLNServiceContainer.resolve(.new, NetworkConfig.self)
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - resolveType: The type of storage of an object in a container.
    ///    - type: The type of the object that conforms to MLNServiceable. As an example: MLNFramework.info.
    ///
    /// - Returns: The service retrieved from the container, or `nil` if the operation failed.
    ///
    public static func resolve<Service: MLNServiceable>(
        _ resolveType: MLNServiceType,
        type: Service.Type
    ) -> Service? {
        let serviceName = String(describing: type.self)

        switch resolveType {
        case .new:
            return factories[serviceName]?() as? Service
        case .singleton(let instance):
            switch instance {
            case .new:
                return getService(name: serviceName) as? Service
            case .same:
                guard let service = cache[serviceName] as? Service else {
                    return getService(name: serviceName) as? Service
                }

                return service
            }
        }
    }



    // MARK: - Private functions

    private static func getService(name: String) -> (any MLNServiceable)? {
        let service = factories[name]?() as? MLNServiceable

        if let service {
            cache[name] = service
        }

        return service
    }
}
