//
//  TabBarBadgeView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarBadgeView

@available(iOS 17.0, *)
struct TabBarBadgeView: View {

    // MARK: - Private properties

    private let title: String

    private let isSelected: Bool

    private let badgeStyle: MLNTabBarView.BadgeStyle



    // MARK: - Body

    var body: some View {
        Text(title)
            .font(badgeStyle.font)
            .foregroundStyle(badgeStyle.colors.text)
            .offset(x: badgeStyle.offset.x, y: badgeStyle.offset.y)
            .background {
                Capsule()
                    .fill(isSelected ? badgeStyle.colors.active : badgeStyle.colors.inactive)
                    .padding(.top, badgeStyle.padding.top)
                    .padding(.leading, badgeStyle.padding.leading)
                    .padding(.trailing, badgeStyle.padding.trailing)
                    .padding(.bottom, badgeStyle.padding.bottom)
            }
            .offset(x: 5, y: -4)
    }



    // MARK: - Init

    init(
        title: String,
        isSelected: Bool,
        style badgeStyle: MLNTabBarView.BadgeStyle
    ) {
        self.title = title

        self.isSelected = isSelected

        self.badgeStyle = badgeStyle
    }
}
