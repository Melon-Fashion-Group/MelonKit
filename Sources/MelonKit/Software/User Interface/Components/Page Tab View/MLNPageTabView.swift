//
//  MLNPageTabView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 22.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPageTabView

///
///
///
@available(iOS, introduced: 16.0, deprecated: 17.0, message: "This UI component is deprecated, use MLNPageScrollView instead")
public struct MLNPageTabView<ContentView: View>: View {

    // MARK: - Private properties

    private let axis: Axis

    @Binding private var selectedPage: Int

    private let contentView: (_ size: CGSize) -> ContentView

    @Environment(\.isSafeAreaIgnored) private var isSafeAreaIgnored



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
                isSafeAreaIgnored: isSafeAreaIgnored,
                contentView: contentView
            )
        }
    }



    // MARK: - Init

    public init(
        axis: Axis = .horizontal,
        selection: Binding<Int>,
        @ViewBuilder contentView: @escaping (_ size: CGSize) -> ContentView
    ) {
        self.axis = axis

        _selectedPage = selection

        self.contentView = contentView
    }
}
