//
//  MLNTabBarView.Tab.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTabBarView.Tab

@available(iOS 17.0, *)
extension MLNTabBarView {

    // MARK: - Public structures

    ///
    ///
    ///
    public struct Tab {

        // MARK: - Public properties

        let image: Image
        let title: String?
        let badge: String?

        let view: AnyView



        // MARK: - Init

        ///
        ///
        ///
        public init(
            image: Image,
            title: String? = nil,
            badge: String? = nil,
            @ViewBuilder view: () -> some View
        ) {
            self.image = image
            self.title = title
            self.badge = badge

            self.view = .init(view())
        }
    }
}
