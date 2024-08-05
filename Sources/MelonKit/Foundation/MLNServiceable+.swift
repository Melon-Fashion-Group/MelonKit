//
//  MLNServiceable+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.02.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - CustomDebugStringConvertible

@available(iOS 17.0, *)
extension MLNServiceable {

    // MARK: - Public properties

    ///
    /// A textual representation of debug service information of this class.
    ///
    public var debugDescription: String {
        "This class supports Dependency Injection and can be registered via MLNServiceContainer"
    }
}
