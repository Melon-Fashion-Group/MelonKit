//
//  MLNTabBarView.BadgeStyle.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.BadgeStyle

extension MLNTabBarView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct BadgeStyle {

        // MARK: - Public properties

        let colors: Colors

        let font: Font

        let padding: Padding

        let offset: Offset



        // MARK: - Init

        ///
        ///
        ///
        public init(
            colors: Colors = .init(),
            font: Font = .system(size: 10, weight: .bold),
            padding: Padding = .init(),
            offset: Offset = .init()
        ) {
            self.colors = colors

            self.font = font

            self.padding = padding

            self.offset = offset
        }
    }
}
