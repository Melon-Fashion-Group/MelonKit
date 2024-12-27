//
//  MLNStackView.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNStackView

///
///
///
@available(iOS 16.0, *)
public struct MLNStackView: Identifiable, Hashable {

    // MARK: - Public properties

    ///
    ///
    ///
    public let id: AnyHashable

    ///
    ///
    ///
    public let view: AnyView



    // MARK: - Init

    ///
    ///
    ///
    public init(id: AnyHashable? = nil, view: some View) {
        self.id = id ?? AnyHashable(UUID())
        self.view = .init(view)
    }
}
