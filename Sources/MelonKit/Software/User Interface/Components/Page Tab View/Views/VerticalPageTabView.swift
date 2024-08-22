//
//  VerticalPageTabView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 22.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - VerticalPageTabView

@available(iOS 16.0, *)
struct VerticalPageTabView<ContentView: View>: View {

    // MARK: - Private properties

    @Binding private var selectedPage: Int

    private let isSafeAreaIgnored: Bool

    private let contentView: (_ size: CGSize) -> ContentView



    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            let topInset = geometry.safeAreaInsets.top

            if isSafeAreaIgnored {
                tabView(inset: topInset)
                    .ignoresSafeArea()
            } else {
                tabView(inset: topInset)
            }
        }
    }



    // MARK: - Init

    init(
        selection: Binding<Int>,
        isSafeAreaIgnored: Bool,
        contentView: @escaping (_ size: CGSize) -> ContentView
    ) {
        _selectedPage = selection

        self.isSafeAreaIgnored = isSafeAreaIgnored

        self.contentView = contentView
    }



    // MARK: - UI

    @ViewBuilder
    private func tabView(inset topInset: CGFloat) -> some View {
        GeometryReader { geometry in
            let size = geometry.size

            TabView(selection: $selectedPage) {
                contentView(size)
                    .frame(width: size.width, height: size.height)
                    .rotationEffect(.degrees(-90))
                    .offset(y: isSafeAreaIgnored ? -topInset / 2 : .zero)
            }
            .frame(width: size.height, height: size.width)
            .rotationEffect(.degrees(90), anchor: .topLeading)
            .offset(x: size.width)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}
