//
//  MLNTabBarView.BadgeStyle.Colors.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.BadgeStyle.Colors

extension MLNTabBarView.BadgeStyle {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Colors {

        // MARK: - Public properties

        let active: Color
        let inactive: Color

        let text: Color



        // MARK: - Init

        ///
        ///
        ///
        public init(
            active: Color = .black,
            inactive: Color = .gray,
            text: Color = .white
        ) {
            self.active = active
            self.inactive = inactive

            self.text = text
        }
    }
}
