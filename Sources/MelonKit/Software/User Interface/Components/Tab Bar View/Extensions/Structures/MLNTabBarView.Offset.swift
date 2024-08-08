//
//  MLNTabBarView.Offset.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.Offset

@available(iOS 17.0, *)
extension MLNTabBarView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Offset {

        // MARK: - Public properties

        let x: CGFloat
        let y: CGFloat



        // MARK: - Init

        ///
        ///
        ///
        public init(
            x: CGFloat = .zero,
            y: CGFloat = .zero
        ) {
            self.x = x
            self.y = y
        }
    }
}
