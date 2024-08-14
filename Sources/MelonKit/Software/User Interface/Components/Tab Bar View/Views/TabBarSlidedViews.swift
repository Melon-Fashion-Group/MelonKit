//
//  TabBarSlidedViews.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarSlidedViews

@available(iOS 16.0, *)
struct TabBarSlidedViews: View {

    // MARK: - Private properties

    private let selectedIndex: Int

    private let views: [AnyView]

    private let size: CGSize

    private let animation: Animation?



    // MARK: - Body

    var body: some View {
        HStack(spacing: .zero) {
            ForEach(.zero ..< views.count, id: \.self) { index in
                views[index]
                    .frame(width: size.width, height: size.height)
            }
        }
        .frame(width: size.width * .init(views.count), height: size.height)
        .offset(x: size.width * -.init(selectedIndex))
        .animation(animation, value: selectedIndex)
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
