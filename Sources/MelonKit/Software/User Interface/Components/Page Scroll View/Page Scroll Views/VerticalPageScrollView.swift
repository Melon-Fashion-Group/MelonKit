//
//  VerticalPageScrollView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 11.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - VerticalPageScrollView

@available(iOS 18.0, *)
struct VerticalPageScrollView<ContentView: View>: View {

    // MARK: - Private properties

    @Binding private var selectedPage: Int

    private let contentView: ContentView

    @State private var currentPage: Int? = .zero
    @State private var position = ScrollPosition(point: .zero)



    // MARK: - Body

    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: .zero) {
                contentView
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .scrollBounceBehavior(.basedOnSize)
        .scrollIndicators(.never)
        .scrollPosition(id: $currentPage)
        .onChange(of: currentPage) { _, newPage in
            guard let newPage else { return }

            selectedPage = newPage
        }
        .onChange(of: selectedPage) {
            withAnimation(.smooth(duration: 0.3)) {
                currentPage = selectedPage
            }

            position.scrollTo(id: currentPage)
        }
        .onAppear {
            currentPage = selectedPage

            position.scrollTo(id: currentPage)
        }
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
