//
//  TabBarTabStyle.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarTabStyle

@available(iOS 16.0, *)
struct TabBarTabStyle: ButtonStyle {

    // MARK: - Private properties

    private let animation: Animation?



    // MARK: - Body

    func makeBody(configuration: Configuration) -> some View {
        if let animation {
            configuration.label
                .scaleEffect(
                    configuration.isPressed
                    ? .init(width: 0.95, height: 0.95)
                    : .init(width: 1, height: 1)
                )
                .animation(animation, value: configuration.isPressed)
        } else {
            configuration.label
                .animation(.none, value: configuration.isPressed)
        }
    }



    // MARK: - Init

    init(animation: Animation?) {
        self.animation = animation
    }
}

