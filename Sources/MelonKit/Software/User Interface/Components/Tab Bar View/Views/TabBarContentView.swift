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
                multipleViews(width: size.width, height: size.height)
            } else {
                singleView(width: size.width, height: size.height)
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
    private func multipleViews(width: CGFloat, height: CGFloat) -> some View {
        switch transition {
        case .scale:
            ScaledViews(selection: selectedTab, views: views, width: width, height: height, animation: animation)
        case .slide:
            SlidedViews(selection: selectedTab, views: views, width: width, height: height, animation: animation)
        case .overlap:
            OverlappedViews(selection: selectedTab, views: views, width: width, height: height, animation: animation)
        case .overlay:
            OverlayedViews(selection: selectedTab, views: views, width: width, height: height, animation: animation)
        }
    }

    @ViewBuilder
    private func singleView(width: CGFloat, height: CGFloat) -> some View {
        ZStack {
            ForEach(.zero ..< views.count, id: \.self) { index in
                views[index]
                    .frame(width: width, height: height)
                    .zIndex(selectedTab == index ? .init(views.count) : .zero)
            }
        }
    }
}
