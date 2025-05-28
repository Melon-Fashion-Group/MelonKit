//
//  Array+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 28.05.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - Array+

extension Array {

    // MARK: - Public methods

    ///
    ///
    ///
    @available(iOS 17.0, *)
    public func asyncMap<ElementType>(
        _ transform: (Element) async throws -> ElementType
    ) async rethrows -> [ElementType] {
        var mappedElements: [ElementType] = []

        for element in self {
            let mappedElement = try await transform(element)

            mappedElements.append(mappedElement)
        }

        return mappedElements
    }
}
