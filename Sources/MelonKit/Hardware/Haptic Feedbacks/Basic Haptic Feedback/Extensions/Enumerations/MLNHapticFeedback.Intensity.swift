//
//  MLNHapticFeedback.Intensity.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNHapticFeedback.Intensity

extension MLNHapticFeedback {

    // MARK: - Public enumerations

    ///
    /// List of available tactile feedback intensities.
    ///
    public enum Intensity: CGFloat {

        ///
        /// Weak intensity.
        ///
        case weak = 0.2

        ///
        /// Low intensity.
        ///
        case low = 0.4

        ///
        /// Medium intensity.
        ///
        case medium = 0.6

        ///
        /// High intensity.
        ///
        case high = 0.8

        ///
        /// Strong intensity.
        ///
        case strong = 1
    }
}
