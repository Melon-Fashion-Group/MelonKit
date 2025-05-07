//
//  MLNTasksQueue.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 25.04.2025.
//  Copyright © 2025 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNTasksQueue

///
///
///
@available(iOS 17.0, *)
public actor MLNTasksQueue {

    // MARK: - Private properties

    private var numberOfRunningTasks: Int = .zero
    private var queue: [CheckedContinuation<Void, Error>] = []

    private let numberOfSimultaneousTasks: UInt8



    // MARK: - Init

    ///
    ///
    ///
    public init(tasks numberOfSimultaneousTasks: UInt8) {
        self.numberOfSimultaneousTasks = numberOfSimultaneousTasks
    }



    // MARK: - Deinit

    deinit {
        queue.forEach { task in task.resume(throwing: CancellationError()) }
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

            tryRunEnqueuedTask()
        }

        defer {
            numberOfRunningTasks -= 1

            tryRunEnqueuedTask()
        }

        try Task.checkCancellation()

        return try await operation()
    }



    // MARK: - Private functions

    private func tryRunEnqueuedTask() {
        guard !queue.isEmpty, numberOfRunningTasks < numberOfSimultaneousTasks else { return }

        numberOfRunningTasks += 1

        let task = queue.removeFirst()

        task.resume()
    }
}
