//
//  MLNFrameworkSpecificationable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNFrameworkSpecificationable

///
///
///
@available(iOS 17.0, *)
public protocol MLNFrameworkSpecificationable: AnyObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var version: MLNFramework.Version { get }

    ///
    ///
    ///
    var build: MLNFramework.Build { get }

    ///
    ///
    ///
    var description: String { get }
}
