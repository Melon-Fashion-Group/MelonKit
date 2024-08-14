//
//  TabBarContentView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarContentView

@available(iOS 16.0, *)
struct TabBarContentView: View {

    // MARK: - Private properties

    private let selectedTab: Int

    private let views: [AnyView]

    private let transition: MLNTabBarView.Transition

    private let animation: Animation?



    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            let size = geometry.size

            if let _ = animation {
                multipleViews(size: size)
            } else {
                singleView(size: size)
            }
        }
    }



    // MARK: - Init

    init(
        selection: Int,
        views: [AnyView],
        transition: MLNTabBarView.Transition,
        animation: Animation?
    ) {
        selectedTab = selection

        self.views = views

        self.transition = transition

        self.animation = animation
    }



    // MARK: - UI

    @ViewBuilder
    private func multipleViews(size: CGSize) -> some View {
        switch transition {
        case .scale:
            TabBarScaledViews(selection: selectedTab, views: views, size: size, animation: animation)
        case .slide:
            TabBarSlidedViews(selection: selectedTab, views: views, size: size, animation: animation)
        case .overlap:
            TabBarOverlappedViews(selection: selectedTab, views: views, size: size, animation: animation)
        case .overlay:
            TabBarOverlayedViews(selection: selectedTab, views: views, size: size, animation: animation)
        }
    }

    @ViewBuilder
    private func singleView(size: CGSize) -> some View {
        ZStack {
            ForEach(.zero ..< views.count, id: \.self) { index in
                views[index]
                    .frame(width: size.width, height: size.height)
                    .zIndex(selectedTab == index ? .init(views.count) : .zero)
            }
        }
    }
}
