//
//  QRCodeGenerator.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.04.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import CoreImage.CIFilterBuiltins
import UIKit



// MARK: - QRCodeGenerator

@available(iOS 17.0, *)
final class QRCodeGenerator: QRCodeGeneratable {

    // MARK: - Public methods

    static func generate(from message: String, as color: UIColor, using scaleFactor: CGFloat) -> UIImage? {
        guard let data = message.data(using: .utf8) else { return nil }

        let filter = CIFilter.qrCodeGenerator()
        filter.setValue(data, forKey: "message")

        guard let qrCode = filter.outputImage else { return nil }

        let transformedQRCode = qrCode.transformed(by: .init(scaleX: scaleFactor, y: scaleFactor))
        let colors: [String: CIColor] = ["inputColor0": .init(color: color), "inputColor1": .init(color: .clear)]
        let coloredQRCode = transformedQRCode.applyingFilter("CIFalseColor", parameters: colors)

        return .init(ciImage: coloredQRCode)
    }


    // MARK: - Init

    private init() { }
}
