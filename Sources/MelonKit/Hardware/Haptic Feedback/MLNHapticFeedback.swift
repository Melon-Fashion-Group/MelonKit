//
//  MLNHapticFeedback.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 18.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import UIKit



// MARK: - MLNHapticFeedback

///
///
///
@available(iOS 17.0, *)
@MainActor public final class MLNHapticFeedback: MLNHapticFeedbackGeneratable {

    // MARK: - Private properties

    private let notificationFeedback = UINotificationFeedbackGenerator()
    private let softImpactFeedback = UIImpactFeedbackGenerator(style: .soft)
    private let lightImpactFeedback = UIImpactFeedbackGenerator(style: .light)
    private let mediumImpactFeedback = UIImpactFeedbackGenerator(style: .medium)
    private let heavyImpactFeedback = UIImpactFeedbackGenerator(style: .heavy)
    private let rigidImpactFeedback = UIImpactFeedbackGenerator(style: .rigid)
    private let selectionFeedback = UISelectionFeedbackGenerator()



    // MARK: - Init

    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func generate(with feedbackType: FeedbackType) {
        switch feedbackType {
        case .error:
            generateErrorFeedback()
        case .warning:
            generateWarningFeedback()
        case .success:
            generateSuccessFeedback()
        case .soft(let intensity):
            generateSoftFeedback(with: intensity)
        case .light(let intensity):
            generateLightFeedback(with: intensity)
        case .medium(let intensity):
            generateMediumFeedback(with: intensity)
        case .heavy(let intensity):
            generateHeavyFeedback(with: intensity)
        case .rigid(let intensity):
            generateRigidFeedback(with: intensity)
        case .selection:
            generateSelectionFeedback()
        }
    }



    // MARK: - Private functions

    private func generateErrorFeedback() {
        notificationFeedback.prepare()

        Task(priority: .userInitiated) {
            notificationFeedback.notificationOccurred(.error)
        }
    }

    private func generateWarningFeedback() {
        notificationFeedback.prepare()

        Task(priority: .userInitiated) {
            notificationFeedback.notificationOccurred(.warning)
        }
    }

    private func generateSuccessFeedback() {
        notificationFeedback.prepare()

        Task(priority: .userInitiated) {
            notificationFeedback.notificationOccurred(.success)
        }
    }

    private func generateSoftFeedback(with intensity: Intensity) {
        softImpactFeedback.prepare()

        Task(priority: .userInitiated) {
            softImpactFeedback.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private func generateLightFeedback(with intensity: Intensity) {
        lightImpactFeedback.prepare()

        Task(priority: .userInitiated) {
            lightImpactFeedback.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private func generateMediumFeedback(with intensity: Intensity) {
        mediumImpactFeedback.prepare()

        Task(priority: .userInitiated) {
            mediumImpactFeedback.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private func generateHeavyFeedback(with intensity: Intensity) {
        heavyImpactFeedback.prepare()

        Task(priority: .userInitiated) {
            heavyImpactFeedback.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private func generateRigidFeedback(with intensity: Intensity) {
        rigidImpactFeedback.prepare()

        Task(priority: .userInitiated) {
            rigidImpactFeedback.impactOccurred(intensity: intensity.rawValue)
        }
    }

    private func generateSelectionFeedback() {
        selectionFeedback.prepare()

        Task(priority: .userInitiated) {
            selectionFeedback.selectionChanged()
        }
    }
}
