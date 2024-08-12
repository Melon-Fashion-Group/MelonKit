//
//  MLNPageTabView.Offset.swift
//  MelonKit
//
//  Created by Dimka Novikov on 09.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNPageTabView.Offset

extension MLNPageTabView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Offset {

        // MARK: - Public properties

        let x: CGFloat
        let y: CGFloat



        // MARK: - Init

        ///
        ///
        ///
        public init(
            x: CGFloat = .zero,
            y: CGFloat = .zero
        ) {
            self.x = x
            self.y = y
        }
    }
}
