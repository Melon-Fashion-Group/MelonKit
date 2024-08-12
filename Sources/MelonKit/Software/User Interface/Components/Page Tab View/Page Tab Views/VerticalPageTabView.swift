//
//  VerticalPageTabView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 09.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - VerticalPageTabView

@available(iOS 16.0, *)
struct VerticalPageTabView<ContentView: View>: View {

    // MARK: - Private properties

    @Binding private var selectedPage: Int

    private let offset: (x: CGFloat, y: CGFloat)

    private let contentView: ContentView



    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            let size = geometry.size

            TabView(selection: $selectedPage) {
                contentView
                    .frame(width: size.width, height: size.height)
                    .rotationEffect(.degrees(-90))
                    .offset(x: offset.x, y: offset.y)
            }
            .frame(width: size.height, height: size.width)
            .rotationEffect(.degrees(90), anchor: .topLeading)
            .offset(x: size.width)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .animation(.smooth(duration: 0.3), value: selectedPage)
    }



    // MARK: - Init

    init(
        selection: Binding<Int>,
        offset: (x: CGFloat, y: CGFloat),
        contentView: ContentView
    ) {
        _selectedPage = selection

        self.offset = offset

        self.contentView = contentView
    }
}
