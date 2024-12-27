//
//  MLNPopoverView+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNPopoverView+

extension MLNPopoverView {

    // MARK: - Public properties

    static var empty: Self { .init(EmptyView(), as: .sheet) }
}
