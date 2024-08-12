//
//  OverlayedViews.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - OverlayedViews

@available(iOS 16.0, *)
struct OverlayedViews: View {

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
                let offset = computeOffset(by: index, with: width)

                views[index]
                    .frame(width: width, height: height)
                    .offset(x: offset)
                    .blur(radius: index < selectedIndex ? 10 : .zero)
                    .animation(animation, value: selectedIndex)
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



    // MARK: - Private functions

    private func computeOffset(by index: Int, with width: CGFloat) -> CGFloat {
        switch index {
        case .zero ..< selectedIndex: -width / 3
        case selectedIndex: .zero
        case (selectedIndex + 1) ..< views.count: width
        default: .zero
        }
    }
}
