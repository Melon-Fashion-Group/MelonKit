//
//  EnvironmentValues+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 08.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - TabBarStyle

@available(iOS 17.0, *)
extension EnvironmentValues {

    // MARK: - Private structures

    private struct TabBarStyleKey: EnvironmentKey {
        static let defaultValue: MLNTabBarView.TabBarStyle = .init()
    }



    // MARK: - Public properties

    var tabBarStyle: MLNTabBarView.TabBarStyle {
        get { self[TabBarStyleKey.self] }
        set { self[TabBarStyleKey.self] = newValue }
    }
}

// MARK: - TabStyle

@available(iOS 17.0, *)
extension EnvironmentValues {

    // MARK: - Private structures

    private struct TabStyleKey: EnvironmentKey {
        static let defaultValue: MLNTabBarView.TabStyle = .init()
    }



    // MARK: - Public properties

    var tabStyle: MLNTabBarView.TabStyle {
        get { self[TabStyleKey.self] }
        set { self[TabStyleKey.self] = newValue }
    }
}

// MARK: - BadgeStyle

@available(iOS 17.0, *)
extension EnvironmentValues {

    // MARK: - Private structures

    private struct BadgeStyleKey: EnvironmentKey {
        static let defaultValue: MLNTabBarView.BadgeStyle = .init()
    }



    // MARK: - Public properties

    var badgeStyle: MLNTabBarView.BadgeStyle {
        get { self[BadgeStyleKey.self] }
        set { self[BadgeStyleKey.self] = newValue }
    }
}
