//
//  VerticalBouncePagingScrollView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 05.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - VerticalBouncePagingScrollView

@available(iOS 17.0, *)
struct VerticalBouncePagingScrollView<ContentView: View>: View {

    // MARK: - Private properties

    @Binding private var selectedIndex: Int

    private let contentView: ContentView

    @State private var currentIndex: Int? = nil



    // MARK: - Body

    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: .zero) {
                contentView
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .scrollBounceBehavior(.always)
        .scrollIndicators(.never)
        .scrollPosition(id: $currentIndex)
        .onChange(of: currentIndex) { _, newIndex in
            guard let newIndex else { return }

            selectedIndex = newIndex
        }
    }



    // MARK: - Init

    init(
        selection: Binding<Int>,
        contentView: ContentView
    ) {
        _selectedIndex = selection

        self.contentView = contentView
    }
}
