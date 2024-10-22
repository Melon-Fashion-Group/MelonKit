//
//  View+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

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
