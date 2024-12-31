//
//  MLNPopoverStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPopoverStorable

///
///
///
@available(iOS 16.0, *)
@MainActor public protocol MLNPopoverStorable: ObservableObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var popover: MLNPopover { get }



    // MARK: - Public methods

    ///
    ///
    ///
    func get() -> Bool

    ///
    ///
    ///
    func set(_ value: Bool)

    ///
    ///
    ///
    func show(_ popover: MLNPopover)

    ///
    ///
    ///
    func hide()
}
