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
///
///
@available(iOS 16.0, *)
public protocol MLNServiceContainerable: MLNServiceable {

    // MARK: - Public methods

    ///
    ///
    ///
    static func register<Service: MLNServiceable>(type: Service.Type, _ factory: @autoclosure @escaping () -> Service)

    ///
    ///
    ///
    static func resolve<Service: MLNServiceable>(_ resolveType: MLNServiceType, _ type: Service.Type) -> Service?
}