//
//  QRCodeGeneratable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.04.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - QRCodeGeneratable

@available(iOS 17.0, *)
protocol QRCodeGeneratable: AnyObject {

    // MARK: - Public methods

    static func generate(from message: String, as color: UIColor, using scaleFactor: CGFloat) -> UIImage?
}
