//
//  MLNNetworkConnectable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkConnectable

///
///
///
@available(iOS 17.0, *)
public protocol MLNNetworkConnectable: AnyObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var isVPNEnabled: Bool { get }
}
