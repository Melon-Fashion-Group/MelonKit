//
//  QRCodeCodable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.04.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import UIKit



// MARK: - QRCodeCodable

@available(iOS 17.0, *)
protocol QRCodeCodable {

    // MARK: - Public methods

    func generateQRCode(as color: UIColor, using scaleFactor: CGFloat) -> UIImage?
}
