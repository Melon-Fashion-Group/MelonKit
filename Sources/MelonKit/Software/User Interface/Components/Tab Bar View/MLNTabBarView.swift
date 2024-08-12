//
//  MLNTabBarView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 09.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPageScrollView

///
///
///
@available(iOS 16.0, *)
public struct MLNTabBarView: View {

    // MARK: - Private properties

    @Binding private var selectedTab: Int

    private let tabs: [Tab]

    @Environment(\.tabBarStyle) private var tabBarStyle
    @Environment(\.tabStyle) private var tabStyle
    @Environment(\.badgeStyle) private var badgeStyle



    // MARK: - Body

    public var body: some View {
        tabBarStyle.colors.background
            .ignoresSafeArea()
            .overlay {
                TabBarContentView(
                    selection: selectedTab,
                    views: tabs.map { $0.view },
                    transition: tabBarStyle.transition,
                    animation: tabBarStyle.animation
                )
                .padding(.bottom, 50)
            }
            .overlay(alignment: .bottom) {
                TabBarTabView(
                    selection: $selectedTab,
                    tabs: tabs.map { ($0.image, $0.title, $0.badge) },
                    tabStyle: tabStyle,
                    badgeStyle: badgeStyle
                )
                .frame(height: 50)
                .background(tabBarStyle.colors.foreground)
                .overlay(alignment: .top) {
                    separatorView
                }
            }
    }



    // MARK: - UI

    @ViewBuilder
    private var separatorView: some View {
        Rectangle()
            .fill(tabBarStyle.colors.separator)
            .frame(height: 1)
    }



    // MARK: - Init

    ///
    ///
    ///
    public init(
        selection: Binding<Int>,
        tabs: () -> [Tab]
    ) {
        _selectedTab = selection

        self.tabs = tabs()
    }
}
