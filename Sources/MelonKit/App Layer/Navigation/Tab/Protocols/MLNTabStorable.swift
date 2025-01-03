//
//  MLNTabStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Observation



// MARK: - MLNTabStorable

///
///
///
@available(iOS 17.0, *)
@MainActor public protocol MLNTabStorable: Observable {

    // MARK: - Public properties

    ///
    ///
    ///
    var tabs: [MLNTab] { get }



    // MARK: - Public methods

    ///
    ///
    ///
    func append(_ tab: MLNTab)

    ///
    ///
    ///
    func remove()

    ///
    ///
    ///
    func removeAll()
}
