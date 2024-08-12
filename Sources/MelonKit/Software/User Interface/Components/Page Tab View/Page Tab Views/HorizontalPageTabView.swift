//
//  HorizontalPageTabView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 09.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - HorizontalPageTabView

@available(iOS 16.0, *)
struct HorizontalPageTabView<ContentView: View>: View {

    // MARK: - Private properties

    @Binding private var selectedPage: Int

    private let contentView: ContentView



    // MARK: - Body

    var body: some View {
        TabView(selection: $selectedPage) {
            contentView
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .animation(.smooth(duration: 0.3), value: selectedPage)
    }



    // MARK: - Init

    init(
        selection: Binding<Int>,
        contentView: ContentView
    ) {
        _selectedPage = selection

        self.contentView = contentView
    }
}
