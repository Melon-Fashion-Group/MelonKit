//
//  HorizontalPageScrollView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 22.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - HorizontalPageScrollView

@available(iOS 17.0, *)
struct HorizontalPageScrollView<ContentView: View>: View {

    // MARK: - Private properties

    @Binding private var selectedPage: Int
    @State private var currentPage: Int? = .zero

    private let contentView: ContentView



    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            let size = geometry.size

            ScrollView(.horizontal) {
                LazyHStack(spacing: .zero) {
                    contentView
                        .frame(width: size.width, height: size.height)
                        .clipped()
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
                currentPage = selectedPage
            }
            .onAppear {
                currentPage = selectedPage
            }
            .animation(.smooth(duration: 0.3), value: currentPage)
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
