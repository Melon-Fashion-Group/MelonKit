//
//  MLNAlertStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 08.01.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNAlertStorable

///
///
///
@available(iOS 17.0, *)
@MainActor public protocol MLNAlertStorable: Observable {

    // MARK: - Public properties

    ///
    ///
    ///
    var view: AnyView { get }

    ///
    ///
    ///
    var isPresented: Bool { get set }



    // MARK: - Public methods

    ///
    ///
    ///
    func show(_ view: some View)

    ///
    ///
    ///
    func hide()
}
