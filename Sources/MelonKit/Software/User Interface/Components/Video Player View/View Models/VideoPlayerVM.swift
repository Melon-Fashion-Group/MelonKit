//
//  VideoPlayerVM.swift
//  MelonKit
//
//  Created by Dimka Novikov on 18.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - VideoPlayerVM

@MainActor
@available(iOS 16.0, *)
final class VideoPlayerVM: VideoPlayerViewModellable {

    // MARK: - Private properties

    private let urlRequest: URLRequest

    private let cacheDirectoryPath: URL = {
        let fileManager = FileManager.default

        return fileManager.urls(for: .cachesDirectory, in: .userDomainMask).first!
    }()

    @Published private(set) var state: VideoPlayerVM.State = .loading



    // MARK: - Init

    init(request urlRequest: URLRequest) {
        self.urlRequest = urlRequest
    }



    // MARK: - Public methods

    func load(_ completion: (_ url: URL) -> Void) async {
        // Loading video data
        guard
            let (data, response) = try? await URLSession.shared.data(for: urlRequest),
            let httpResponse = response as? HTTPURLResponse,
            httpResponse.statusCode == 200
        else {
            await MainActor.run { state = .error }

            return
        }

        // Getting file URL
        guard let url = urlRequest.url else {
            await MainActor.run { state = .error }

            return
        }

        let fileName = url.lastPathComponent
        let fileURL = cacheDirectoryPath.appendingPathComponent(fileName)

        // Caching video data
        guard let _ = try? data.write(to: fileURL, options: .atomic) else {
            await MainActor.run { state = .error }

            return
        }

        await MainActor.run {
            completion(fileURL)

            state = .loaded
        }
    }

    func reload(_ completion: (_ url: URL) -> Void) async {
        await MainActor.run { state = .loading }

        await load(completion)
    }
}
