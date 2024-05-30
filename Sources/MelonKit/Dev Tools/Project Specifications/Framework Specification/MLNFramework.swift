//
//  MLNFramework.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNFramework

///
/// A class that implements the framework specification.
///
@available(iOS 16.0, *)
public final class MLNFramework: MLNFrameworkSpecificationable {

    // MARK: - Public properties

    ///
    /// A shared property that allows you to access the properties and methods of the service.
    ///
    public static let info: MLNFrameworkSpecificationable = MLNFramework()

    ///
    /// A property that allows you to get the version of the framework being used.
    ///
    public let version = Version(major: 0, minor: 10, patch: 0)

    ///
    /// A property that allows you to get the build version of the framework being used.
    ///
    public let build: Build = 2



    // MARK: - Init

    private init() { }
}
