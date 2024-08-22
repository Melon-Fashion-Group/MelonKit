//
//  HorizontalPageTabView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 22.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - HorizontalPageTabView

@available(iOS 16.0, *)
struct HorizontalPageTabView<ContentView: View>: View {

    // MARK: - Private properties

    @Binding private var selectedPage: Int

    private let contentView: (_ size: CGSize) -> ContentView



    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            let size = geometry.size

            TabView(selection: $selectedPage) {
                contentView(size)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }



    // MARK: - Init

    init(
        selection: Binding<Int>,
        contentView: @escaping (_: CGSize) -> ContentView
    ) {
        _selectedPage = selection

        self.contentView = contentView
    }
}
