//
//  MLNStackView+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNStackView+

extension MLNStackView {

    // MARK: - Public methods

    ///
    ///
    ///
    public func hash(into hasher: inout Hasher) { hasher.combine(id) }

    ///
    ///
    ///
    public static func == (_ lhs: MLNStackView, _ rhs: MLNStackView) -> Bool { lhs.id == rhs.id }
}
