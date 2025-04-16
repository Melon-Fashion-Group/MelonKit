//
//  MLNContainer.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNContainer

///
///
///
@available(iOS 17.0, *)
@MainActor public final class MLNContainer {

    // MARK: - Private properties

    private var factories: [String: (any MLNResolvableContainer) -> MLNContainerable] = [:]
    private var cache: [String: MLNContainerable] = [:]



    // MARK: - Init

    ///
    ///
    ///
    public init() { }
}



// MARK: - MLNRegistrableContainer

@available(iOS 17.0, *)
extension MLNContainer: MLNRegistrableContainer {

    // MARK: - Public methods

    ///
    ///
    ///
    public func register<Service: MLNContainerable>(
        _ type: Service.Type,
        as lifetime: ServiceLifetime = .new,
        service: @escaping (_ resolver: any MLNResolvableContainer) -> Service
    ) {
        let key = String(describing: type)

        register(type, for: key, as: lifetime, service: service)
    }

    ///
    ///
    ///
    public func register<Service: MLNContainerable>(
        _ type: Service.Type,
        for key: String,
        as lifetime: ServiceLifetime = .new,
        service: @escaping (_ resolver: any MLNResolvableContainer) -> Service
    ) {
        switch lifetime {
        case .new:
            factories[key] = service
        case .singleton:
            factories[key] = { [weak self] container in
                if let singleton = self?.cache[key] as? Service {
                    return singleton
                }

                let instance = service(container)
                self?.cache[key] = instance
                return instance
            }
        }
    }
}



// MARK: - MLNResolvableContainer

@available(iOS 17.0, *)
extension MLNContainer: MLNResolvableContainer {

    // MARK: - Public methods

    ///
    ///
    ///
    public func resolve<Service: MLNContainerable>() -> Service {
        resolve(Service.self)
    }

    ///
    ///
    ///
    public func resolve<Service: MLNContainerable>(for key: String) -> Service {
        resolve(Service.self, for: key)
    }

    ///
    ///
    ///
    public func resolve<Service: MLNContainerable>(_ type: Service.Type) -> Service {
        let key = String(describing: type)

        return resolve(type, for: key)
    }

    ///
    ///
    ///
    public func resolve<Service: MLNContainerable>(_ type: Service.Type, for key: String) -> Service {
        guard let service = factories[key]?(self) as? Service else {
            let serviceName = String(describing: type)

            fatalError("You don't have a registered service named: \(serviceName). Please register it.")
        }

        return service
    }
}
