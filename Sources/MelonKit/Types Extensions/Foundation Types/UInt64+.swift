//
//  UInt64+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 02.04.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - UInt64+

extension UInt64 {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 17.0, *)
    public func toKilobytes() -> Self {
        self / 1024
    }

    ///
    ///
    ///
    @available(iOS 17.0, *)
    public func toMegabytes() -> Self {
        toKilobytes() / 1024
    }

    ///
    ///
    ///
    @available(iOS 17.0, *)
    public func toGigabytes() -> Self {
        toMegabytes() / 1024
    }
}
