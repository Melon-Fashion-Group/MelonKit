//
//  MLNTabBarView.TabStyle.Colors.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.TabStyle.Colors

extension MLNTabBarView.TabStyle {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Colors {

        // MARK: - Public properties

        let active: Color
        let inactive: Color



        // MARK: - Init

        ///
        ///
        ///
        public init(
            active: Color = .black,
            inactive: Color = .gray
        ) {
            self.active = active
            self.inactive = inactive
        }
    }
}
