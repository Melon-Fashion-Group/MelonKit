//
//  TabBarTabView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarTabView

@available(iOS 16.0, *)
struct TabBarTabView: View {

    // MARK: - Private properties

    @Binding private var selectedTab: Int

    private let tabs: [(image: Image, title: String?, badge: String?)]

    private let tabStyle: MLNTabBarView.TabStyle
    private let badgeStyle: MLNTabBarView.BadgeStyle



    // MARK: - Body

    var body: some View {
        HStack(spacing: .zero) {
            ForEach(.zero ..< tabs.count, id: \.self) { index in
                Button {
                    selectedTab = index
                } label: {
                    tabView(tab: tabs[index], index: index)
                        .foregroundStyle(selectedTab == index ? tabStyle.colors.active : tabStyle.colors.inactive)
                        .padding(.top, 6)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .buttonStyle(TabStyle(animation: tabStyle.animation))
            }
        }
        .clipped()
    }



    // MARK: - Init

    init(
        selection: Binding<Int>,
        tabs: [(image: Image, title: String?, badge: String?)],
        tabStyle: MLNTabBarView.TabStyle,
        badgeStyle: MLNTabBarView.BadgeStyle
    ) {
        _selectedTab = selection

        self.tabs = tabs

        self.tabStyle = tabStyle
        self.badgeStyle = badgeStyle
    }



    // MARK: - UI

    @ViewBuilder
    private func tabView(
        tab: (image: Image, title: String?, badge: String?),
        index: Int
    ) -> some View {
        let size: CGFloat = tab.title == nil ? 26 : 22

        VStack(spacing: 6) {
            imageView(tab.image)
                .frame(width: size, height: size)
                .overlay(alignment: .topTrailing) {
                    if let badge = tab.badge {
                        TabBarBadgeView(
                            title: badge,
                            isSelected: selectedTab == index,
                            style: badgeStyle
                        )
                        .transition(
                            .scale
                                .combined(with: .opacity)
                                .animation(badgeStyle.animation)
                        )
                    }
                }

            if let title = tab.title {
                Text(title)
                    .font(tabStyle.font)
                    .offset(x: tabStyle.offset.x, y: tabStyle.offset.y)
            }
        }
    }

    @ViewBuilder
    private func imageView(_ image: Image) -> some View {
        image
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}
