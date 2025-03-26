//
//  AttributedString+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 26.03.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - AttributedString+

extension AttributedString {

    // MARK: - Public properties

    ///
    ///
    ///
    public static let empty = Self("")
}



extension Array<AttributedString> {

    // MARK: - Public methods

    ///
    ///
    ///
    public func joined(with separator: String = .empty) -> AttributedString {
        let attributedSeparator = AttributedString(separator)
        var newAttributedString: AttributedString = .empty

        self.forEach { attributedString in
            newAttributedString.append(attributedString)
            newAttributedString.append(attributedSeparator)
        }

        return newAttributedString
    }
}
