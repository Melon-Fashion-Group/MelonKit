//
//  MLNHapticFeedback.Type.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNHapticFeedback.Type

extension MLNHapticFeedback {

    // MARK: - Public enumerations

    ///
    /// List of types of haptic feedback.
    ///
    public enum `Type` {

        ///
        /// Error.
        ///
        case error

        ///
        /// Warning.
        ///
        case warning

        ///
        /// Successful completion.
        ///
        case success

        ///
        /// Soft
        ///
        case soft(intensity: Intensity)

        ///
        /// Light haptic feedback.
        ///
        case light(intensity: Intensity)

        ///
        /// Medium haptic feedback.
        ///
        case medium(intensity: Intensity)

        ///
        /// Heavy haptic feedback.
        ///
        case heavy(intensity: Intensity)

        ///
        /// Rigid haptic feedback.
        ///
        case rigid(intensity: Intensity)

        ///
        /// Selection.
        ///
        case selection
    }
}
