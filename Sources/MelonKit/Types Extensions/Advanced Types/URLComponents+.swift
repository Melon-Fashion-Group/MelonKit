//
//  URLComponents+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - URLComponents+

extension URLComponents {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 16.0, *)
    public func addQueryItems(_ items: [URLQueryItem]) -> Self {
        var components = self

        components.queryItems = items

        return components
    }
}
