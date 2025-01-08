//
//  MLNPopoverStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 08.01.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPopupStore

///
///
///
@available(iOS 17.0, *)
@Observable public final class MLNPopupStore: MLNPopoverStorable {

    // MARK: - Public properties

    ///
    ///
    ///
    @ObservationIgnored public private(set) var view: AnyView = .empty

    ///
    ///
    ///
    public var isPresented = false



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func show(_ view: some View) {
        self.view = .init(view)

        withAnimation(.interactiveSpring(duration: 0.3)) {
            isPresented = true
        }
    }

    ///
    ///
    ///
    public func hide() {
        view = .empty

        withAnimation(.interactiveSpring(duration: 0.3)) {
            isPresented = false
        }
    }
}
