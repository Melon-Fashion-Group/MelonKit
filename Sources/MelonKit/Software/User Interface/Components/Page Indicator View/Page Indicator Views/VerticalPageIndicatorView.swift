//
//  VerticalPageIndicatorView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - VerticalPageIndicatorView

@available(iOS 16.0, *)
struct VerticalPageIndicatorView: View {

    // MARK: - Private properties

    @Binding private var selectedIndicator: Int

    private let indicators: [MLNPageIndicatorView.Indicator]

    private let style: MLNPageIndicatorView.IndicatorStyle

    private let overallHeight: CGFloat



    // MARK: - Body

    var body: some View {
        ScrollViewReader { scrollView in
            ScrollView(.vertical) {
                LazyVStack(spacing: style.spacing) {
                    ForEach(.zero ..< indicators.count, id: \.self) { index in
                        indicators[index].view
                            .frame(width: style.size.width, height: style.size.height)
                            .foregroundStyle(selectedIndicator == index ? style.colors.active : style.colors.inactive)
                            .id(index)
                    }
                }
            }
            .scrollIndicators(.never)
            .scrollDisabled(true)
            .onChange(of: selectedIndicator) { _ in
                withAnimation(style.animation) {
                    scrollView.scrollTo(selectedIndicator)
                }
            }
            .animation(style.animation, value: selectedIndicator)
        }
        .frame(width: style.size.width, height: overallHeight)
    }



    // MARK: - Init

    init(
        selection: Binding<Int>,
        indicators: [MLNPageIndicatorView.Indicator],
        style: MLNPageIndicatorView.IndicatorStyle
    ) {
        _selectedIndicator = selection

        self.indicators = indicators

        self.style = style

        let indicatorsHeight = style.size.height * .init(style.displayedCount)
        let spacingsHeight = style.spacing * .init(style.displayedCount - 1)
        overallHeight = indicatorsHeight + spacingsHeight
    }
}
