//
//  MLNHapticFeedback.Intensity.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 18.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNHapticFeedback.Intensity

@available(iOS 17.0, *)
extension MLNHapticFeedback {

    ///
    ///
    ///
    public enum Intensity: CGFloat {

        ///
        ///
        ///
        case weak = 0.2

        ///
        ///
        ///
        case low = 0.4

        ///
        ///
        ///
        case medium = 0.6

        ///
        ///
        ///
        case high = 0.8

        ///
        ///
        ///
        case strong = 1
    }
}
