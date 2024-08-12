//
//  MLNPageIndicatorView.Indicator.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPageIndicatorView.Indicator

extension MLNPageIndicatorView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Indicator {

        // MARK: - Public properties

        let view: AnyView



        // MARK: - Init

        ///
        ///
        ///
        public init(@ViewBuilder view: () -> some View) {
            self.view = .init(view())
        }
    }
}
