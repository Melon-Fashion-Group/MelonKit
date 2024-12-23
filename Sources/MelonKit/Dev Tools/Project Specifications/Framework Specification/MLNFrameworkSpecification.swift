//
//  MLNFramework.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNFramework

///
///
///
@available(iOS 16.0, *)
public final class MLNFramework: MLNFrameworkSpecificationable {

    // MARK: - Public properties

    ///
    ///
    ///
    public let version = Version(major: 1, minor: 0, patch: 0)

    ///
    ///
    ///
    public let build: Build = 10



    // MARK: - Init

    ///
    ///
    ///
    public init() { }
}
