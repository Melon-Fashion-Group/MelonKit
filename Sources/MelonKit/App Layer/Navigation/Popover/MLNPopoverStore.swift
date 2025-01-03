//
//  MLNPopoverStore.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Observation
import SwiftUI



// MARK: - MLNPopoverStore

///
///
///
@available(iOS 17.0, *)
@Observable public final class MLNPopoverStore: MLNPopoverStorable {

    // MARK: - Public properties

    ///
    ///
    ///
    @ObservationIgnored public private(set) var popover: MLNPopover = .empty

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
    public func show(_ popover: MLNPopover) {
        self.popover = popover

        isPresented = true
    }

    ///
    ///
    ///
    public func hide() {
        self.popover = .empty

        isPresented = false
    }
}
