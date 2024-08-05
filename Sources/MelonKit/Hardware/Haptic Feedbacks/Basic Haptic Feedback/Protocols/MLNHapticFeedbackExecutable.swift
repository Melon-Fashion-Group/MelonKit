//
//  MLNHapticFeedbackExecutable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNHapticFeedbackExecutable

///
/// A protocol that describes the operation of  Haptic Feedback.
///
@available(iOS 17.0, *)
public protocol MLNHapticFeedbackExecutable: MLNServiceable {

    // MARK: - Public methods

    ///
    /// A method that implements haptic feedback with a given feedback type.
    ///
    static func execute(with feedbackType: MLNHapticFeedback.`Type`)
}
