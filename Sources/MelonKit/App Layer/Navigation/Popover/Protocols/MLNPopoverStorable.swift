//
//  MLNPopoverStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Observation
import SwiftUI



// MARK: - MLNPopoverStorable

///
///
///
@available(iOS 17.0, *)
@MainActor public protocol MLNPopoverStorable: Observable {

    // MARK: - Public properties

    ///
    ///
    ///
    var popover: MLNPopover { get }

    ///
    ///
    ///
    var isPresented: Bool { get set }



    // MARK: - Public methods

    ///
    ///
    ///
    func show(_ popover: MLNPopover)

    ///
    ///
    ///
    func hide()
}
