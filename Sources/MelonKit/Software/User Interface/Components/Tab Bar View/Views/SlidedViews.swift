//
//  SlidedViews.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - SlidedViews

@available(iOS 16.0, *)
struct SlidedViews: View {

    // MARK: - Private properties

    private let selectedIndex: Int

    private let views: [AnyView]

    private let width: CGFloat
    private let height: CGFloat

    private let animation: Animation?



    // MARK: - Body

    var body: some View {
        HStack(spacing: .zero) {
            ForEach(.zero ..< views.count, id: \.self) { index in
                views[index]
                    .frame(width: width, height: height)
            }
        }
        .frame(width: width * .init(views.count), height: height)
        .offset(x: width * -.init(selectedIndex))
        .animation(animation, value: selectedIndex)
    }



    // MARK: - Init

    init(
        selection: Int,
        views: [AnyView],
        width: CGFloat,
        height: CGFloat,
        animation: Animation?
    ) {
        selectedIndex = selection

        self.views = views

        self.width = width
        self.height = height

        self.animation = animation
    }
}
