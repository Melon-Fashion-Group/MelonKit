//
//  HorizontalPageIndicatorView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 10.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - HorizontalPageIndicatorView

@available(iOS 16.0, *)
struct HorizontalPageIndicatorView: View {

    // MARK: - Private properties

    @Binding private var selectedIndicator: Int

    private let indicators: [MLNPageIndicatorView.Indicator]

    private let style: MLNPageIndicatorView.IndicatorStyle

    private let overallWidth: CGFloat



    // MARK: - Body

    var body: some View {
        ScrollViewReader { scrollView in
            ScrollView(.horizontal) {
                LazyHStack(spacing: style.spacing) {
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
        .frame(width: overallWidth, height: style.size.height)
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

        let indicatorsWidth = style.size.width * .init(style.displayedCount)
        let spacingsWidth = style.spacing * .init(style.displayedCount - 1)
        overallWidth = indicatorsWidth + spacingsWidth
    }
}
