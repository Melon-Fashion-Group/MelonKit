//
//  MLNTabBarView.TabBarStyle.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.TabBarStyle

extension MLNTabBarView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct TabBarStyle {

        // MARK: - Public properties

        let colors: Colors

        let transition: Transition

        let animation: Animation?



        // MARK: - Init

        ///
        ///
        ///
        public init(
            colors: Colors = .init(),
            transition: Transition = .slide,
            animation: Animation? = nil
        ) {
            self.colors = colors

            self.transition = transition

            self.animation = animation
        }
    }
}
