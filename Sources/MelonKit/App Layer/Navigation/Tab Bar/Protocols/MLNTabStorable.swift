//
//  MLNTabStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTabStorable

///
///
///
@available(iOS 16.0, *)
public protocol MLNTabStorable: ObservableObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var tabs: [MLNTab] { get }



    // MARK: - Public methods

    ///
    ///
    ///
    func insertTab(_ tab: MLNTab, at index: Int)

    ///
    ///
    ///
    func removeTab(at index: Int)
}
