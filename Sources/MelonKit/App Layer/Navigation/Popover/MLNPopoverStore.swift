//
//  MLNPopoverStore.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPopoverStore

///
///
///
@available(iOS 16.0, *)
public final class MLNPopoverStore: MLNPopoverStorable {

    // MARK: - Public properties

    ///
    ///
    ///
    public private(set) var popover: MLNPopover = .empty



    // MARK: - Private properties

    @Published private var isPresented = false



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func get() -> Bool { isPresented }

    ///
    ///
    ///
    public func set(_ value: Bool) {
        isPresented = value
    }

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
