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
@available(iOS 17.0, *)
public final class MLNTabStore: MLNTabStorable {

    // MARK: - Public properties

    ///
    ///
    ///
    @Published public private(set) var tabs: [MLNTab] = []

    ///
    ///
    ///
    @Published public var selectedTab: Int = .zero



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func append(_ tab: MLNTab) {
        tabs.append(tab)
    }

    ///
    ///
    ///
    public func remove() {
        if tabs.count > 1 {
            tabs.removeLast()
        }
    }

    ///
    ///
    ///
    public func removeAll() {
        tabs.removeAll()
    }

    ///
    ///
    ///
    public func selectTab(with index: Int) {
        selectedTab = index
    }
}
