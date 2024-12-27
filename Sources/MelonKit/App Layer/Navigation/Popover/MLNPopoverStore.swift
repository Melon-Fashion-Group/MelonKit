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
    public private(set) var popover: MLNPopoverView = .empty

    ///
    ///
    ///
    public var isPresented: Bool {
        get { _isPresented }
        set {
            if !newValue { popover = .empty }

            _isPresented = false
        }
    }



    // MARK: - Private properties

    @Published private var _isPresented = false



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func show(_ popover: MLNPopoverView) {
        self.popover = popover

        _isPresented = true
    }

    ///
    ///
    ///
    public func hide() {
        self.popover = .empty

        _isPresented = false
    }
}
