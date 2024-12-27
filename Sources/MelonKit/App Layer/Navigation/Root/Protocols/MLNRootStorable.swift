//
//  MLNRootStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNRootStorable

///
///
///
@available(iOS 16.0, *)
@MainActor public protocol MLNRootStorable: ObservableObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var view: AnyView { get }



    // MARK: - Public methods

    ///
    ///
    ///
    func set(_ view: some View)
}
