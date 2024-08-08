//
//  MLNTabBarView.TabStyle.Colors.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.TabStyle.Colors

@available(iOS 17.0, *)
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
