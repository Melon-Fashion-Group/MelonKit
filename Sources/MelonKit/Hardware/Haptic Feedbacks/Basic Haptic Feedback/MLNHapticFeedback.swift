//
//  MLNHapticFeedback.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import UIKit



// MARK: - MLNHapticFeedback

///
/// A class that implements the operation of  Haptic Feedback.
///
@available(iOS 16.0, *)
public final class MLNHapticFeedback: MLNHapticFeedbackExecutable {

    // MARK: - Init

    private init() { }



    // MARK: - Public methods

    ///
    /// A method that implements haptic feedback with a given feedback type.
    ///
    /// Example:
    ///
    ///     MLNHapticFeedback.feedback.execute(with: .success)
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Parameters:
    ///    - feedbackType: Type of haptic feedback.
    ///
    public static func execute(with feedbackType: `Type`) {
        switch feedbackType {
        case .error: executeError()
        case .warning: executeWarning()
        case .success: executeSuccess()
        case .soft(let intensity): executeSoft(with: intensity)
        case .light(let intensity): executeLight(with: intensity)
        case .medium(let intensity): executeMedium(with: intensity)
        case .heavy(let intensity): executeHeavy(with: intensity)
        case .rigid(let intensity): executeRigid(with: intensity)
        case .selection: executeSelection()
        }
    }



    // MARK: - Private functions

    private static func executeError() {
        let tapticEngine = UINotificationFeedbackGenerator()
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.notificationOccurred(.error)
        }
    }

    private static func executeWarning() {
        let tapticEngine = UINotificationFeedbackGenerator()
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.notificationOccurred(.warning)
        }
    }

    private static func executeSuccess() {
        let tapticEngine = UINotificationFeedbackGenerator()
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.notificationOccurred(.success)
        }
    }

    private static func executeSoft(with intensity: Intensity) {
        let tapticEngine = UIImpactFeedbackGenerator(style: .soft)
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private static func executeLight(with intensity: Intensity) {
        let tapticEngine = UIImpactFeedbackGenerator(style: .light)
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private static func executeMedium(with intensity: Intensity) {
        let tapticEngine = UIImpactFeedbackGenerator(style: .medium)
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private static func executeHeavy(with intensity: Intensity) {
        let tapticEngine = UIImpactFeedbackGenerator(style: .heavy)
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private static func executeRigid(with intensity: Intensity) {
        let tapticEngine = UIImpactFeedbackGenerator(style: .rigid)
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private static func executeSelection() {
        let tapticEngine = UISelectionFeedbackGenerator()
        tapticEngine.prepare()

        Task(priority: .userInitiated) {
            await tapticEngine.selectionChanged()
        }
    }
}
