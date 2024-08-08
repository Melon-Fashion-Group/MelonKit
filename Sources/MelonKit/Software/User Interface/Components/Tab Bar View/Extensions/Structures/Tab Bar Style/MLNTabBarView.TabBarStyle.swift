//
//  MLNTabBarView.TabBarStyle.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.TabBarStyle

@available(iOS 17.0, *)
extension MLNTabBarView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct TabBarStyle {

        // MARK: - Public properties

        let colors: Colors

        let animation: Animation?



        // MARK: - Init

        ///
        ///
        ///
        public init(
            colors: Colors = .init(),
            animation: Animation? = nil
        ) {
            self.colors = colors
            self.animation = animation
        }
    }
}
