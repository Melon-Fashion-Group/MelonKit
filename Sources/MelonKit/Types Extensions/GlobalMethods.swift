//
//  GlobalMethods.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 03.01.2025.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - executeTask

///
///
///
@available(iOS 17.0, *)
@MainActor public func executeTask(
    _ priority: TaskPriority = .userInitiated,
    delay: TimeInterval = 1,
    completion: @escaping () -> Void
) async {
    Task(priority: priority) {
        let nanoseconds = convertSecondsInNanoseconds(delay)

        try? await Task.sleep(nanoseconds: nanoseconds)

        await MainActor.run { completion() }
    }
}

@available(iOS 17.0, *)
@MainActor private func convertSecondsInNanoseconds(_ seconds: TimeInterval) -> UInt64 {
    .init(seconds * 1_000_000_000)
}
