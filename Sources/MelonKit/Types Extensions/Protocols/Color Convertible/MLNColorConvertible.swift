//
//  MLNColorConvertible.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Lofticries Games. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNColorConvertible

///
/// A protocol describing the implementation of color conversion from or to hexadecimal number system.
///
@available(iOS 16.0, *)
public protocol MLNColorConvertible: Any {

    // MARK: - Init

    ///
    /// An initializer that allows you to get a color from a string in hexadecimal notation.
    ///
    init?(hex hexString: String)



    // MARK: - Public methods

    ///
    /// A method to convert a color to a hexadecimal string.
    ///
    func toHexString(isAlphaChannelNeeded: Bool) -> String?
}
