//
//  MLNShimeEffectStyle.swift
//  MelonKit
//
//  Created by Dimka Novikov on 13.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNShimeEffectStyle

///
///
///
@available(iOS 16.0, *)
public struct MLNShimeEffectStyle {

    // MARK: - Public properties

    let colors: Colors
    let opacity: CGFloat

    let blur: CGFloat

    let animation: Animation



    // MARK: - Init

    ///
    ///
    ///
    public init(
        colors: Colors = .init(),
        opacity: CGFloat = 1,
        blur: CGFloat = .zero,
        animation: Animation = .linear(duration: 2)
    ) {
        self.colors = colors
        self.opacity = opacity

        self.blur = blur

        self.animation = animation
    }
}
