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
    let icon: Image
    let title: String?
    let badge: String?
    let content: AnyView



    // MARK: - Init

    ///
    ///
    ///
    public init(
        icon: Image,
        title: String? = nil,
        badge: String? = nil,
        content: AnyView
    ) {
        self.icon = icon
        self.title = title
        self.badge = badge
        self.content = content
    }
}
