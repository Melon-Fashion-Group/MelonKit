//
//  MLNStackStore.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNStackStore

///
///
///
@available(iOS 16.0, *)
public final class MLNStackStore: MLNStackStorable {

    // MARK: - Public properties

    ///
    ///
    ///
    @Published public private(set) var views: [MLNStackView] = []



    // MARK: - Public methods

    ///
    ///
    ///
    public func push(_ view: MLNStackView, animated: Bool = true) {
        UIView.setAnimationsEnabled(animated)
        defer { UIView.setAnimationsEnabled(true) }

        views.append(view)
    }

    ///
    ///
    ///
    public func pop(animated: Bool = true) {
        UIView.setAnimationsEnabled(animated)
        defer { UIView.setAnimationsEnabled(true) }

        if views.count > 1 {
            views.removeLast()
        }
    }

    ///
    ///
    ///
    public func pop(to id: AnyHashable, animated: Bool = true) {
        guard views.contains(where: { $0.id == id }) else { return }

        while views.last?.id != id {
            pop(animated: animated)
        }
    }
}
