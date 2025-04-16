//
//  MLNToastStore.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 08.01.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNToastStore

///
///
///
@available(iOS 17.0, *)
@Observable public final class MLNToastStore: MLNPopoverStorable {

    // MARK: - Public properties

    ///
    ///
    ///
    @ObservationIgnored public private(set) var view: AnyView = .empty

    ///
    ///
    ///
    public let placement: MLNToastPlacement

    ///
    ///
    ///
    public var isPresented = false



    // MARK: - Init

    ///
    ///
    ///
    public init(placement: MLNToastPlacement) {
        self.placement = placement
    }



    // MARK: - Public methods

    ///
    ///
    ///
    public func show(_ view: some View) {
        self.view = .init(view)

        withAnimation(.smooth(duration: 0.3)) {
            isPresented = true
        }
    }

    ///
    ///
    ///
    public func hide() {
        view = .empty

        withAnimation(.smooth(duration: 0.3)) {
            isPresented = false
        }
    }
}
