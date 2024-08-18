//
//  EnvironmentValues+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import AVKit
import SwiftUI



// MARK: - TabBarStyle

extension EnvironmentValues {

    // MARK: - Private structures

    @available(iOS 16.0, *)
    private struct TabBarStyleKey: EnvironmentKey {

        // MARK: - Public properties

        static let defaultValue: MLNTabBarView.TabBarStyle = .init()
    }



    // MARK: - Public properties

    @available(iOS 16.0, *)
    var tabBarStyle: MLNTabBarView.TabBarStyle {
        get { self[TabBarStyleKey.self] }
        set { self[TabBarStyleKey.self] = newValue }
    }
}



// MARK: - TabStyle

extension EnvironmentValues {

    // MARK: - Private structures

    @available(iOS 16.0, *)
    private struct TabStyleKey: EnvironmentKey {

        // MARK: - Public properties

        static let defaultValue: MLNTabBarView.TabStyle = .init()
    }



    // MARK: - Public properties

    @available(iOS 16.0, *)
    var tabStyle: MLNTabBarView.TabStyle {
        get { self[TabStyleKey.self] }
        set { self[TabStyleKey.self] = newValue }
    }
}



// MARK: - BadgeStyle

extension EnvironmentValues {

    // MARK: - Private structures

    @available(iOS 16.0, *)
    private struct BadgeStyleKey: EnvironmentKey {

        // MARK: - Public properties

        static let defaultValue: MLNTabBarView.BadgeStyle = .init()
    }



    // MARK: - Public properties

    @available(iOS 16.0, *)
    var badgeStyle: MLNTabBarView.BadgeStyle {
        get { self[BadgeStyleKey.self] }
        set { self[BadgeStyleKey.self] = newValue }
    }
}



// MARK: - MLNPageIndicatorStyle

extension EnvironmentValues {

    // MARK: - Private structures

    @available(iOS 16.0, *)
    private struct PageIndicatorStyleKey: EnvironmentKey {

        // MARK: - Public properties

        static let defaultValue: MLNPageIndicatorView.IndicatorStyle = .init()
    }



    // MARK: - Public properties

    @available(iOS 16.0, *)
    var pageIndicatorStyle: MLNPageIndicatorView.IndicatorStyle {
        get { self[PageIndicatorStyleKey.self] }
        set { self[PageIndicatorStyleKey.self] = newValue }
    }
}



// MARK: - MLNVideoPlayerView

extension EnvironmentValues {

    // MARK: - Private structures

    @available(iOS 16.0, *)
    private struct VideoGravityKey: EnvironmentKey {

        // MARK: - Public properties

        static let defaultValue: AVLayerVideoGravity = .resizeAspect
    }



    // MARK: - Public properties

    @available(iOS 16.0, *)
    var videoGravity: AVLayerVideoGravity {
        get { self[VideoGravityKey.self] }
        set { self[VideoGravityKey.self] = newValue }
    }
}
