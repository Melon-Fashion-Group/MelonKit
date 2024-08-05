//
//  MLNServiceInstance.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNServiceInstance

///
/// A list of possible Singleton types for an object instance in the container.
///
@available(iOS 17.0, *)
public enum MLNServiceInstance {

    ///
    /// New.
    ///
    case new

    ///
    /// The same.
    ///
    case same
}
