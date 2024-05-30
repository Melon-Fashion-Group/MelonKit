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
///
///
@available(iOS 16.0, *)
public enum MLNServiceType {

    ///
    ///
    ///
    case new

    ///
    ///
    ///
    case singleton(instance: MLNServiceInstance)
}
