//
//  String+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import UIKit



// MARK: - String+

extension String {

    // MARK: - Public properties

    ///
    ///
    ///
    @available(iOS 17.0, *)
    public static let empty = Self()

    ///
    ///
    ///
    @available(iOS 17.0, *)
    public static let whitespace = " "
}



// MARK: - QRCodeCodable

extension String: QRCodeCodable {

    // MARK: - Public methods

    ///
    ///
    ///
    public func generateQRCode(as color: UIColor = .black, using scaleFactor: CGFloat = 1) -> UIImage? {
        QRCodeGenerator.generate(from: self, as: color, using: scaleFactor)
    }
}
