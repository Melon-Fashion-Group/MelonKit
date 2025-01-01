//
//  MLNNavigationStackStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNNavigationStackStorable

///
///
///
@available(iOS 16.0, *)
@MainActor public protocol MLNNavigationStackStorable: ObservableObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var items: [MLNNavigationStackItem] { get set }

    ///
    ///
    ///
    var rootItem: MLNNavigationStackItem? { get }



    // MARK: - Public methods

    ///
    ///
    ///
    func set(root item: MLNNavigationStackItem, animated: Bool)

    ///
    ///
    ///
    func push(_ item: MLNNavigationStackItem, animated: Bool)

    ///
    ///
    ///
    func pop(animated: Bool)

    ///
    ///
    ///
    func pop(to id: AnyHashable, animated: Bool)

    ///
    ///
    ///
    func popToRoot(animated: Bool)
}
