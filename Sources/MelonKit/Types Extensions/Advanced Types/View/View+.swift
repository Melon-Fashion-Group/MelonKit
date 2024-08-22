//
//  View+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import AVKit
import SwiftUI



// MARK: - View+

extension View {

    // MARK: - Public methods

    ///
    /// A method that allows you to add a debug frame to the current View.
    ///
    /// Example:
    ///
    ///     VStack(spacing: 10) {
    ///         Text("Hello,")
    ///
    ///         Text("🌍!")
    ///     }
    ///     .drawDebugFrame()
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - color: Debug frame display color. The default value is a random one of 3 colors: red, green or blue.
    ///    - filling: Filling the debug frame. The default value is `true`.
    ///
    /// - Returns: View with a frame drawn for debugging.
    ///
    @available(iOS 16.0, *)
    public func drawDebugFrame(
        color: Color = [.red, .green, .blue].randomElement()!,
        filling: Bool = true
    ) -> some View {
        self
            .background {
                if filling {
                    Rectangle()
                        .fill(color.opacity(0.1))
                }
            }
            .border(color.opacity(0.5), width: 1)
    }
}



// MARK: - MLNPageIndicatorView

extension View {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public func pageIndicatorStyle(_ style: MLNPageIndicatorView.IndicatorStyle) -> some View {
        environment(\.pageIndicatorStyle, style)
    }
}



// MARK: - MLNTabBarView

extension View {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public func tabBarStyle(_ style: MLNTabBarView.TabBarStyle) -> some View {
        environment(\.tabBarStyle, style)
    }

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public func tabStyle(_ style: MLNTabBarView.TabStyle) -> some View {
        environment(\.tabStyle, style)
    }

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public func badgeStyle(_ style: MLNTabBarView.BadgeStyle) -> some View {
        environment(\.badgeStyle, style)
    }
}



// MARK: - ShimeEffectModifier

extension View {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public func shimeEffect(_ style: MLNShimeEffectStyle) -> some View {
        self
            .modifier(ShimeEffectModifier(style: style))
    }
}



// MARK: - MLNVideoPlayerView

extension View {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public func playerVideoScaling(_ scaling: MLNVideoPlayer.VideoScaling) -> some View {
        let videoGravity: AVLayerVideoGravity = switch scaling {
        case .resize: .resize
        case .aspectFit: .resizeAspect
        case .aspectFill: .resizeAspectFill
        }

        return environment(\.videoGravity, videoGravity)
    }
}



// MARK: - MLNPageTabView

extension View {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS, introduced: 16.0, deprecated: 17.0, message: "Used only with the MLNPageTabView UI component")
    public func pageTabViewSafeAreaIgnored() -> some View {
        environment(\.isSafeAreaIgnored, true)
    }
}
