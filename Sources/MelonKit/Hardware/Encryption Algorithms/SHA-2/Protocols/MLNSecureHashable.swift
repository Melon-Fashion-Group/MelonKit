//
//  MLNSecureHashable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNSecureHashable

///
/// A protocol that describes the ability to hash a string using the SHA-2 algorithm.
///
@available(iOS 17.0, *)
public protocol MLNSecureHashable: MLNServiceable {

    // MARK: - Public methods

    ///
    /// A method that allows you to obtain a hash of 256, 385, or 512 bits from plaintext.
    ///
    func hash(_ string: String) async -> String?
}
