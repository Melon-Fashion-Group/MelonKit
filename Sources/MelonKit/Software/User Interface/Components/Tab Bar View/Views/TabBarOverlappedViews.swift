//
//  TabBarOverlappedViews.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarOverlappedViews

@available(iOS 16.0, *)
struct TabBarOverlappedViews: View {

    // MARK: - Private properties

    private let selectedIndex: Int

    private let views: [AnyView]

    private let size: CGSize

    private let animation: Animation?



    // MARK: - Body

    var body: some View {
        ZStack {
            ForEach(.zero ..< views.count, id: \.self) { index in
                let isFarView = index < selectedIndex
                let isNearView = index > selectedIndex

                views[index]
                    .frame(width: size.width, height: size.height)
                    .scaleEffect(isNearView ? .init(width: 1.05, height: 1.05) : .identity)
                    .opacity(isNearView ? .zero : 1)
                    .blur(radius: isFarView ? 10 : .zero)
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
