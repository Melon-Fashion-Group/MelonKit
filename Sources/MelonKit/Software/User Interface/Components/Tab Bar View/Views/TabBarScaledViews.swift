//
//  TabBarScaledViews.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarScaledViews

@available(iOS 16.0, *)
struct TabBarScaledViews: View {

    // MARK: - Private properties

    private let selectedIndex: Int

    private let views: [AnyView]

    private let size: CGSize

    private let animation: Animation?



    // MARK: - Body

    var body: some View {
        ZStack {
            ForEach(.zero ..< views.count, id: \.self) { index in
                views[index]
                    .frame(width: size.width, height: size.height)
                    .zIndex(selectedIndex == index ? .init(views.count) : .zero)
                    .scaleEffect(selectedIndex == index ? .identity : .init(width: 0.99, height: 0.99))
                    .opacity(selectedIndex == index ? 1 : .zero)
                    .animation(animation, value: selectedIndex)
            }
        }
    }



    // MARK: - Init

    init(
        selection: Int,
        views: [AnyView],
        size: CGSize,
        animation: Animation?
    ) {
        selectedIndex = selection

        self.views = views

        self.size = size

        self.animation = animation
    }
}
