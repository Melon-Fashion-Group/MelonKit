//
//  MLNHapticFeedback.FeedbackType.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 18.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNHapticFeedback.FeedbackType

extension MLNHapticFeedback {

    // MARK: - Public enumerations

    ///
    ///
    ///
    public enum FeedbackType {

        ///
        ///
        ///
        case error

        ///
        ///
        ///
        case warning

        ///
        ///
        ///
        case success

        ///
        ///
        ///
        case soft(intensity: Intensity)

        ///
        ///
        ///
        case light(intensity: Intensity)

        ///
        ///
        ///
        case medium(intensity: Intensity)

        ///
        ///
        ///
        case heavy(intensity: Intensity)

        ///
        ///
        ///
        case rigid(intensity: Intensity)

        ///
        ///
        ///
        case selection
    }
}
