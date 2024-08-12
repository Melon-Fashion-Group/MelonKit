//
//  OverlappedViews.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - OverlappedViews

@available(iOS 16.0, *)
struct OverlappedViews: View {

    // MARK: - Private properties

    private let selectedIndex: Int

    private let views: [AnyView]

    private let width: CGFloat
    private let height: CGFloat

    private let animation: Animation?



    // MARK: - Body

    var body: some View {
        ZStack {
            ForEach(.zero ..< views.count, id: \.self) { index in
                let isFarView = index < selectedIndex ? true : false
                let isRightView = index > selectedIndex ? true : false

                views[index]
                    .frame(width: width, height: height)
                    .offset(x: isRightView ? width : .zero)
                    .scaleEffect(isFarView ? .init(width: 1.1, height: 1.1) : .identity)
                    .opacity(isFarView ? 0.5 : 1)
                    .animation(
                        isRightView ? animation?.delay(0.05 * .init(index)) : animation,
                        value: selectedIndex
                    )
            }
        }
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
