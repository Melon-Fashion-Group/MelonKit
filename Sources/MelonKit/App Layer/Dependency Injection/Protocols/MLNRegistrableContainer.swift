//
//  MLNRegistrableContainer.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNRegistrableContainer

@available(iOS 16.0, *)
@MainActor protocol MLNRegistrableContainer: MLNContainerable {

    // MARK: - Public methods

    func register<Service: MLNContainerable>(
        _ type: Service.Type,
        as lifetime: MLNContainer.ServiceLifetime,
        service: @escaping (_ resolver: any MLNResolvableContainer) -> Service
    )

    func register<Service: MLNContainerable>(
        _ type: Service.Type,
        for key: String,
        as lifetime: MLNContainer.ServiceLifetime,
        service: @escaping (_ resolver: any MLNResolvableContainer) -> Service
    )
}
