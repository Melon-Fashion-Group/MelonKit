//
//  MLNResolvableContainer.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNResolvableContainer

///
///
///
@available(iOS 16.0, *)
@MainActor public protocol MLNResolvableContainer: MLNContainerable {

    // MARK: - Public methods

    ///
    ///
    ///
    func resolve<Service: MLNContainerable>(_ type: Service.Type) -> Service

    ///
    ///
    ///
    func resolve<Service: MLNContainerable>(_ type: Service.Type, for key: String) -> Service

    ///
    ///
    ///
    func resolve<Service: MLNContainerable>() -> Service

    ///
    ///
    ///
    func resolve<Service: MLNContainerable>(for key: String) -> Service
}
