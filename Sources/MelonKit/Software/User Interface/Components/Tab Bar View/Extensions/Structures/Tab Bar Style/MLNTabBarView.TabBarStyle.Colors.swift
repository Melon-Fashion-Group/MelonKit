//
//  MLNTabBarView.TabBarStyle.Colors.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.TabBarStyle.Colors

extension MLNTabBarView.TabBarStyle {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Colors {

        // MARK: - Public properties

        let background: Color
        let foreground: Color
        let separator: Color



        // MARK: - Init

        ///
        ///
        ///
        public init(
            background: Color = .primary,
            foreground: Color = .primary,
            separator: Color = .clear
        ) {
            self.background = background
            self.foreground = foreground
            self.separator = separator
        }
    }
}
