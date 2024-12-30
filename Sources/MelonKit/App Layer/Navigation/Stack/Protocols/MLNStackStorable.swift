//
//  MLNStackStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNStackStorable

///
///
///
@available(iOS 16.0, *)
@MainActor public protocol MLNStackStorable: ObservableObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var items: [MLNStackItem] { get }



    // MARK: - Public methods

    ///
    ///
    ///
    func set(root item: MLNStackItem, animated: Bool)

    ///
    ///
    ///
    func push(_ item: MLNStackItem, animated: Bool)

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
