//
//  MLNTabBarView.TabStyle.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.TabStyle

@available(iOS 17.0, *)
extension MLNTabBarView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct TabStyle {

        // MARK: - Public properties

        let colors: Colors

        let font: Font

        let offset: Offset

        let animation: Animation?



        // MARK: - Init

        ///
        ///
        ///
        public init(
            colors: Colors = .init(),
            font: Font = .system(size: 10),
            offset: Offset = .init(),
            animation: Animation? = nil
        ) {
            self.colors = colors

            self.font = font

            self.offset = offset

            self.animation = animation
        }
    }
}
