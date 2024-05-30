//
//  MLNServiceContainerable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNServiceContainerable

///
/// A protocol that describes the ability to add and extract dependencies from a DI container.
///
@available(iOS 16.0, *)
public protocol MLNServiceContainerable: MLNServiceable {

    // MARK: - Public methods

    ///
    /// A method that allows you to add a dependency to a container.
    ///
    static func register<Service: MLNServiceable>(type: Service.Type, _ factory: @autoclosure @escaping () -> Service)

    ///
    /// A method that allows you to extract a dependency from a container.
    ///
    static func resolve<Service: MLNServiceable>(_ resolveType: MLNServiceType, type: Service.Type) -> Service?
}
