//
//  VerticalUnbouncePagingScrollView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 05.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - VerticalUnbouncePagingScrollView

@available(iOS 17.0, *)
struct VerticalUnbouncePagingScrollView<ContentView: View>: View {

    // MARK: - Private properties

    @Binding private var selectedIndex: Int
    private let count: Int

    private let contentView: ContentView

    @State private var currentIndex: Int? = nil
    @State private var isScrollDisabled = false



    // MARK: - Body

    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: .zero) {
                contentView
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .scrollIndicators(.never)
        .scrollPosition(id: $currentIndex)
        .scrollDisabled(isScrollDisabled)
        .gesture(
            DragGesture(minimumDistance: .zero)
                .onChanged { gesture in
                    guard let currentIndex else { return }

                    let startLocation = gesture.startLocation.y
                    let currentLocation = gesture.location.y

                    if currentIndex == .zero {
                        guard currentLocation > startLocation else { return }

                        isScrollDisabled = true
                    } else if currentIndex == (count - 1) {
                        guard currentLocation < startLocation else { return }

                        isScrollDisabled = true
                    }
                }
                .onEnded { _ in
                    isScrollDisabled = false
                }
        )
        .onChange(of: currentIndex) { _, newIndex in
            guard let newIndex else { return }

            selectedIndex = newIndex
        }
    }



    // MARK: - Init

    init(
        selection: Binding<Int>,
        count: Int,
        contentView: ContentView
    ) {
        _selectedIndex = selection
        self.count = count

        self.contentView = contentView
    }
}
