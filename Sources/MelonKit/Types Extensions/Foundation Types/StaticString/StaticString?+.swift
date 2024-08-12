//
//  StaticString?+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - StaticString?+

extension StaticString? {

    // MARK: - Public properties

    ///
    /// A property of a static string that allows you to conveniently check whether it matches the value nil or is empty.
    ///
    @available(iOS 16.0, *)
    public var isNilOrEmpty: Bool {
        self.isNil ? true : "\(self!)".isEmpty
    }

    ///
    /// A property of a static string that allows you to conveniently check whether it matches the nil value.
    ///
    @available(iOS 16.0, *)
    public var isNil: Bool {
        self == nil
    }
}
