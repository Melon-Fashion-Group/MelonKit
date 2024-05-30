//
//  MLNFrameworkSpecificationable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNFrameworkSpecificationable

///
/// A protocol that describes the framework specification.
///
@available(iOS 16.0, *)
public protocol MLNFrameworkSpecificationable: MLNServiceable {

    // MARK: - Public properties

    ///
    /// A shared property that allows you to access the properties and methods of the service.
    ///
    static var info: MLNFrameworkSpecificationable { get }

    ///
    /// A property that allows you to get the version of the framework being used.
    ///
    var version: MLNFramework.Version { get }

    ///
    /// A property that allows you to get the build version of the framework being used.
    ///
    var build: MLNFramework.Build { get }
}
