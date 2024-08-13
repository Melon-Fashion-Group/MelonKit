//
//  ShimeEffectModifier.swift
//  MelonKit
//
//  Created by Dimka Novikov on 13.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - ShimeEffectModifier

@available(iOS 16.0, *)
struct ShimeEffectModifier: ViewModifier {

    // MARK: - Private properties

    private let style: MLNShimeEffectStyle

    @State private var startPoint: CGFloat = -1



    // MARK: - Init

    public init(style: MLNShimeEffectStyle) {
        self.style = style

        self.startPoint = startPoint
    }



    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .hidden()
            .overlay {
                Rectangle()
                    .fill(style.colors.tint)
                    .mask { content }
                    .overlay {
                        GeometryReader { geometry in
                            let offset = geometry.size.height / 2

                            Rectangle()
                                .fill(style.colors.highlight)
                                .mask {
                                    Rectangle()
                                        .fill(
                                            .linearGradient(
                                                colors: [
                                                    style.colors.highlight.opacity(.zero),
                                                    style.colors.highlight.opacity(style.opacity),
                                                    style.colors.highlight.opacity(.zero)
                                                ],
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                        )
                                        .blur(radius: style.blur)
                                        .offset(x: startPoint > .zero ? offset : -offset)
                                        .offset(x: geometry.size.width * startPoint)
                                }
                        }
                        .mask { content }
                    }
            }
            .onAppear {
                startPoint = -startPoint
            }
            .animation(
                style.animation.repeatForever(autoreverses: false),
                value: startPoint
            )
    }
}
