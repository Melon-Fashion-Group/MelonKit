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
@available(iOS 17.0, *)
@MainActor public protocol MLNHapticFeedbackGeneratable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    func generate(with feedbackType: MLNHapticFeedback.FeedbackType)
}
