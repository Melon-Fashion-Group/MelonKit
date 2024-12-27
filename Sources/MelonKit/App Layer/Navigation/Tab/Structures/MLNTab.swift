//
//  MLNTab.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNTab

///
///
///
@available(iOS 16.0, *)
public struct MLNTab {

    // MARK: - Public properties

    ///
    ///
    ///
    public let icon: Image

    ///
    ///
    ///
    public let title: String?

    ///
    ///
    ///
    public let badge: String?

    ///
    ///
    ///
    public let view: AnyView



    // MARK: - Init

    ///
    ///
    ///
    public init(
        icon: Image,
        title: String? = nil,
        badge: String? = nil,
        view: some View
    ) {
        self.icon = icon
        self.title = title
        self.badge = badge
        self.view = .init(view)
    }
}
