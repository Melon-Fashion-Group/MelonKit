//
//  MLNService.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNService

///
/// A structure that implements a property wrapper for SwiftUI. For ease of object retrieval in SwiftUI style.
///
@available(iOS 17.0, *)
@propertyWrapper
public struct MLNService<Service: MLNServiceable> {

    // MARK: - Public properties

    ///
    /// A value that allows you to add and retrieve data.
    ///
    public var wrappedValue: Service {
        get { service }
        set { service = newValue }
    }



    // MARK: - Private properties

    private var service: Service



    // MARK: - Init

    ///
    /// An initializer that allows you to specify the storage type of an instance stored in a container when it is retrieved.
    ///
    /// Example:
    ///
    ///     @MLNService(.singleton) private var networkConfig: NetworkConfig
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - type: Instance storage type.
    ///
    public init(_ type: MLNServiceType = .new) {
        guard let service = MLNServiceContainer.resolve(type, type: Service.self) else {
            let serviceName = String(describing: Service.self)

            fatalError("No service of type \(serviceName) registered.")
        }

        self.service = service
    }
}
