//
//  TabBarContentView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarContentView

@available(iOS 17.0, *)
struct TabBarContentView: View {

    // MARK: - Private properties

    private let selectedTab: Int

    private let views: [AnyView]

    private let animation: Animation?



    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            let size = geometry.size

            if let animation {
                multipleViews(width: size.width, height: size.height)
                    .animation(animation, value: selectedTab)
            } else {
                singleView(width: size.width, height: size.height)
            }
        }
    }



    // MARK: - Init

    init(
        selection: Int,
        views: [AnyView],
        animation: Animation?
    ) {
        selectedTab = selection

        self.views = views

        self.animation = animation
    }



    // MARK: - UI

    @ViewBuilder
    private func multipleViews(width: CGFloat, height: CGFloat) -> some View {
        HStack(spacing: .zero) {
            ForEach(.zero ..< views.count, id: \.self) { index in
                views[index]
                    .frame(width: width, height: height)
            }
        }
        .frame(width: width * .init(views.count), height: height)
        .offset(x: width * -.init(selectedTab))
    }

    @ViewBuilder
    private func singleView(width: CGFloat, height: CGFloat) -> some View {
        views[selectedTab]
            .frame(width: width, height: height)
    }
}
