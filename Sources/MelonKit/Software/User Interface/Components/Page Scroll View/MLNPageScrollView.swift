//
//  MLNPageScrollView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 11.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPageScrollView

///
///
///
@available(iOS 18.0, *)
public struct MLNPageScrollView<ContentView: View>: View {

    // MARK: - Private properties

    private let axis: Axis

    @Binding private var selectedPage: Int

    private let contentView: ContentView



    // MARK: - Body

    public var body: some View {
        switch axis {
        case .horizontal:
            HorizontalPageScrollView(
                selection: $selectedPage,
                contentView: contentView
            )
        case .vertical:
            VerticalPageScrollView(
                selection: $selectedPage,
                contentView: contentView
            )
        }
    }



    // MARK: - Init

    ///
    ///
    ///
    public init(
        axis: Axis = .horizontal,
        selection: Binding<Int>,
        @ViewBuilder contentView: () -> ContentView
    ) {
        self.axis = axis

        _selectedPage = selection

        self.contentView = contentView()
    }
}
