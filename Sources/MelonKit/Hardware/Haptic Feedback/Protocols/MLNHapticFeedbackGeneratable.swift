//
//  MLNHapticFeedbackGeneratable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 18.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNHapticFeedbackGeneratable

///
///
///
@MainActor
@available(iOS 16.0, *)
public protocol MLNHapticFeedbackGeneratable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    func generate(with feedbackType: MLNHapticFeedback.FeedbackType)
}
