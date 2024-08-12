//
//  MLNPageIndicatorView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPageIndicatorView

///
///
///
@available(iOS 16.0, *)
public struct MLNPageIndicatorView: View {

    // MARK: - Private properties

    private let axis: Axis

    @Binding private var selectedIndicator: Int

    private let indicators: [Indicator]

    @Environment(\.pageIndicatorStyle) private var pageIndicatorStyle



    // MARK: - Body

    public var body: some View {
        switch axis {
        case .horizontal:
            HorizontalPageIndicatorView(
                selection: $selectedIndicator,
                indicators: indicators,
                style: pageIndicatorStyle
            )
        case .vertical:
            VerticalPageIndicatorView(
                selection: $selectedIndicator,
                indicators: indicators,
                style: pageIndicatorStyle
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
        indicators: () -> [Indicator]
    ) {
        self.axis = axis

        _selectedIndicator = selection

        self.indicators = indicators()
    }
}
