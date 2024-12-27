//
//  MLNPopoverView.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPopoverView

///
///
///
@available(iOS 16.0, *)
public struct MLNPopoverView {

    // MARK: - Public properties

    ///
    ///
    ///
    public let type: PresentationType

    ///
    ///
    ///
    public let view: AnyView



    // MARK: - Init

    ///
    ///
    ///
    public init(_ view: some View, as type: PresentationType = .sheet) {
        self.view = .init(view)
        self.type = type
    }
}
