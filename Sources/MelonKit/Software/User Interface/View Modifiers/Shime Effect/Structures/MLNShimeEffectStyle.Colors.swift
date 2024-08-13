//
//  MLNShimeEffectStyle.Colors.swift
//  MelonKit
//
//  Created by Dimka Novikov on 13.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNShimeEffectStyle.Colors

extension MLNShimeEffectStyle {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Colors {

        // MARK: - Public properties

        let tint: Color
        let highlight: Color



        // MARK: - Init

        ///
        ///
        ///
        public init(
            tint: Color = .black,
            highlight: Color = .white
        ) {
            self.tint = tint
            self.highlight = highlight
        }
    }
}
