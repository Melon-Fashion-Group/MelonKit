//
//  URLQueryItem+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - URLQueryItem+

extension URLQueryItem {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public static func item(name: String, value: String? = nil) -> Self {
        .init(name: name, value: value)
    }
}
