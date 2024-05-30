//
//  MLNSecureHashing.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation
import SubrosaKit



// MARK: - MLNSecureHashing

///
/// A class that implements the ability to hash a string using the SHA-2 algorithm.
///
@available(iOS 16.0, *)
public final class MLNSecureHashing: MLNSecureHashable {

    // MARK: - Private properties

    private let sha2: SBRConfidential



    // MARK: - Init

    ///
    /// An initializer that allows you to create an instance with a given hash value.
    ///
    /// Example:
    ///
    ///     let sha2 = MLNSecureHashing(hashValue: .bits512)
    ///
    ///     let plainText = "Hello, 🌍!"
    ///
    ///     let hashedText = sha2.hash(plainText)
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - hashValue: Hash value.
    ///
    public init(hashValue: SBRConfidential.HashValue) {
        sha2 = SBRConfidential(with: .sha2(hashValue: hashValue))
    }



    // MARK: - Public methods

    ///
    /// A method that allows you to obtain a hash of 256, 385, or 512 bits from plaintext.
    ///
    /// Example:
    ///
    ///     let sha2 = MLNSecureHashing(hashValue: .bits512)
    ///
    ///     let plainText = "Hello, 🌍!"
    ///
    ///     let hashedText = sha2.hash(plainText)
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - hashValue: Plaintext for hashing.
    ///
    /// - Returns: Hash string in UTF-8 format.
    ///
    public func hash(_ string: String) async -> String? {
        guard let hashedData = await sha2.encrypt(propertySet: .init(text: string)) else {
            return nil
        }

        return .init(data: hashedData, encoding: .utf8)
    }
}
