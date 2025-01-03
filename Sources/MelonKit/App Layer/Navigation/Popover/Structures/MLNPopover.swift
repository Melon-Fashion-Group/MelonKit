//
//  MLNPopover.swift
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
@available(iOS 17.0, *)
public struct MLNPopover {

    // MARK: - Public properties

    ///
    ///
    ///
    public let view: AnyView

    ///
    ///
    ///
    public let type: PresentationType



    // MARK: - Init

    ///
    ///
    ///
    public init(
        _ view: some View,
        as type: PresentationType = .sheet
    ) {
        self.view = .init(view)
        self.type = type
    }
}
