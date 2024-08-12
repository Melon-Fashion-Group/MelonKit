//
//  MLNPageIndicatorView.Size.swift
//  MelonKit
//
//  Created by Dimka Novikov on 12.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPageIndicatorView.Size

extension MLNPageIndicatorView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Size {

        // MARK: - Public properties

        let width: CGFloat
        let height: CGFloat



        // MARK: - Init

        ///
        ///
        ///
        public init(
            width: CGFloat = 10,
            height: CGFloat = 10
        ) {
            self.width = width
            self.height = height
        }
    }
}
