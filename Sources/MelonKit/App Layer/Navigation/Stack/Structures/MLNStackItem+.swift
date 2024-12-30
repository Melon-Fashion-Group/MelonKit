//
//  MLNStackItem+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - Hashable+

extension MLNStackItem: Hashable {

    // MARK: - Public methods

    ///
    ///
    ///
    public func hash(into hasher: inout Hasher) { hasher.combine(id) }
}



// MARK: - Equatable+

extension MLNStackItem: Equatable {

    // MARK: - Public methods

    ///
    ///
    ///
    public static func == (_ lhs: MLNStackItem, _ rhs: MLNStackItem) -> Bool { lhs.id == rhs.id }
}
