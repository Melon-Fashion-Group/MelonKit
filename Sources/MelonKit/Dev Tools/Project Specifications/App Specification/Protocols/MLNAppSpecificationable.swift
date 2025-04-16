//
//  MLNAppSpecificationable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNAppSpecificationable

///
///
///
@available(iOS 17.0, *)
public protocol MLNAppSpecificationable: AnyObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var version: MLNApp.Version { get }

    ///
    ///
    ///
    var build: MLNApp.Build { get }

    ///
    ///
    ///
    var description: String { get }
}
