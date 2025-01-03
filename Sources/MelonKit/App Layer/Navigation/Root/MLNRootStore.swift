//
//  MLNRootStore.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNRootStore

///
///
///
@available(iOS 17.0, *)
public final class MLNRootStore: MLNRootStorable {

    // MARK: - Public properties

    ///
    ///
    ///
    public private(set) var view = AnyView(EmptyView())



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func set(_ view: some View) {
        self.view = .init(view)
    }
}
