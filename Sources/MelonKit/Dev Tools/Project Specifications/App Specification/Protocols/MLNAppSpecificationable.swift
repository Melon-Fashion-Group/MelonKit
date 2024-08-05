//
//  MLNAppSpecificationable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNAppSpecificationable

///
/// A protocol that describes the app specification.
///
@available(iOS 17.0, *)
public protocol MLNAppSpecificationable: MLNServiceable {

    // MARK: - Public properties

    ///
    /// A shared property that allows you to access the properties and methods of the service.
    ///
    static var info: MLNAppSpecificationable { get }

    ///
    /// A property that allows you to get the version of the running app.
    ///
    var version: MLNApp.Version { get }

    ///
    /// A property that allows you to get the build version of the running app.
    ///
    var build: MLNApp.Build { get }
}
