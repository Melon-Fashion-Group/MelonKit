//
//  MLNPageTabView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 09.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPageTabView

///
///
///
@available(iOS, introduced: 16.0, deprecated: 18.0, message: "This UI component is deprecated, use MLNPageScrollView instead")
public struct MLNPageTabView<ContentView: View>: View {

    // MARK: - Private properties

    private let axis: Axis

    @Binding private var selectedPage: Int

    private let offset: Offset

    private let contentView: ContentView



    // MARK: - Body

    public var body: some View {
        switch axis {
        case .horizontal:
            HorizontalPageTabView(
                selection: $selectedPage,
                contentView: contentView
            )
        case .vertical:
            VerticalPageTabView(
                selection: $selectedPage,
                offset: (offset.x, offset.y),
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
        offset: Offset = .init(),
        @ViewBuilder contentView: () -> ContentView
    ) {
        self.axis = axis

        _selectedPage = selection

        self.offset = offset

        self.contentView = contentView()
    }
}
