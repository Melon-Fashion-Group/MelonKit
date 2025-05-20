//
//  MLNSimultaneousTaskQueue.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 25.04.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNSimultaneousTaskQueue

///
///
///
@available(iOS 17.0, *)
public actor MLNSimultaneousTaskQueue {

    // MARK: - Private properties

    private let maxNumberOfSimultaneousTasks: UInt8
    private var numberOfSimultaneouslyRunningTasks: UInt8 = .zero

    private var queue: [CheckedContinuation<Void, Error>] = []



    // MARK: - Init

    ///
    ///
    ///
    public init(count maxNumberOfSimultaneousTasks: UInt8) {
        self.maxNumberOfSimultaneousTasks = maxNumberOfSimultaneousTasks
    }



    // MARK: - Deinit

    deinit {
        queue.forEach { $0.resume(throwing: CancellationError()) }
    }



    // MARK: - Public methods

    ///
    ///
    ///
    public func enqueue<Operation: Sendable>(
        operation: @escaping @Sendable () async throws -> Operation
    ) async throws -> Operation {
        try Task.checkCancellation()

        try await withCheckedThrowingContinuation { (continuation: CheckedContinuation<Void, Error>) in
            queue.append(continuation)

            executeEnqueuedTask()
        }

        defer {
            numberOfSimultaneouslyRunningTasks -= 1

            executeEnqueuedTask()
        }

        try Task.checkCancellation()

        return try await operation()
    }



    // MARK: - Private functions

    private func executeEnqueuedTask() {
        guard !queue.isEmpty, numberOfSimultaneouslyRunningTasks < maxNumberOfSimultaneousTasks else { return }

        numberOfSimultaneouslyRunningTasks += 1

        let task = queue.removeFirst()

        task.resume()
    }
}
