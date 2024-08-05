//
//  MLNUnbouncePagingScrollView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 05.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNUnbouncePagingScrollView

///
/// A UI component that implements page-by-page scrolling of content without a bounce effect on border pages.
///
@available(iOS 17.0, *)
public struct MLNUnbouncePagingScrollView<ContentView: View>: View {

    // MARK: - Private properties

    private let axis: Axis

    @Binding private var selectedIndex: Int
    private let count: Int

    private let contentView: ContentView



    // MARK: - Body

    public var body: some View {
        switch axis {
        case .horizontal:
            EmptyView()
        case .vertical:
            EmptyView()
        }
    }



    // MARK: - Init

    ///
    /// An initializer that allows you to create a UI component with page content scrolling without a bounce effect on border pages.
    ///
    /// Example:
    ///
    ///     @State private var selectedIndex: Int = .zero
    ///
    ///     private let colors: [Color] = [.red, .green, .blue]
    ///
    ///     GeometryReader { geometry in
    ///         let size = geometry.size
    ///
    ///         MLNUnbouncePagingScrollView(
    ///             axis: .vertical,
    ///             selection: $selectedIndex,
    ///             count: colors.count
    ///         ) {
    ///             ForEach(colors, id: \.self) { color in
    ///                 color
    ///                     .frame(width: size.width, height: size.height)
    ///             }
    ///         }
    ///     }
    ///     .ignoresSafeArea()
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - axis: Scroll axis. The default value is `.horizontal`.
    ///    - selection: An option that allows you to track the index of the currently displayed content.
    ///    - count: Number of pages.
    ///    - contentView: Content to display.
    ///
    public init(
        axis: Axis = .horizontal,
        selection: Binding<Int>,
        count: Int,
        @ViewBuilder contentView: () -> ContentView
    ) {
        self.axis = axis

        _selectedIndex = selection
        self.count = count

        self.contentView = contentView()
    }
}
