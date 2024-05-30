//
//  MLNServiceType.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNServiceType

///
/// Список типов объектов, хранящихся в контейнере.
///
@available(iOS 16.0, *)
public enum MLNServiceType {

    ///
    /// New.
    ///
    case new

    ///
    /// The same instance.
    ///
    case singleton(instance: MLNServiceInstance)
}
