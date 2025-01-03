//
//  MLNNavigationStackStore.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Observation
import SwiftUI



// MARK: - MLNNavigationStackStore

///
///
///
@available(iOS 17.0, *)
@Observable public final class MLNNavigationStackStore: MLNNavigationStackStorable {

    // MARK: - Public properties

    ///
    ///
    ///
    public var items: [MLNNavigationStackItem] = []

    ///
    ///
    ///
    public private(set) var rootItem: MLNNavigationStackItem?



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func set(root item: MLNNavigationStackItem, animated: Bool = false) {
        UIView.setAnimationsEnabled(animated)
        defer { UIView.setAnimationsEnabled(true) }

        rootItem = item
        items.removeAll()
    }

    ///
    ///
    ///
    public func push(_ item: MLNNavigationStackItem, animated: Bool = true) {
        UIView.setAnimationsEnabled(animated)
        defer { UIView.setAnimationsEnabled(true) }

        items.append(item)
    }

    ///
    ///
    ///
    public func pop(animated: Bool = true) {
        UIView.setAnimationsEnabled(animated)
        defer { UIView.setAnimationsEnabled(true) }

        items.removeLast()
    }

    ///
    ///
    ///
    public func pop(to id: AnyHashable, animated: Bool = true) {
        guard items.contains(where: { $0.id == id }) else { return }

        while items.last?.id != id {
            pop(animated: animated)
        }
    }

    ///
    ///
    ///
    public func popToRoot(animated: Bool = true) {
        UIView.setAnimationsEnabled(animated)
        defer { UIView.setAnimationsEnabled(true) }

        items.removeAll()
    }
}
