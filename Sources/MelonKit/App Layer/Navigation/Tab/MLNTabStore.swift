//
//  MLNTabStore.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTabStore

///
///
///
@available(iOS 16.0, *)
public final class MLNTabStore: MLNTabStorable {

    // MARK: - Public properties

    public private(set) var tabs: [MLNTab] = []



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func insert(_ tab: MLNTab, at index: Int) {
        tabs.insert(tab, at: index)
    }

    ///
    ///
    ///
    public func remove(at index: Int) {
        tabs.remove(at: index)
    }
}
