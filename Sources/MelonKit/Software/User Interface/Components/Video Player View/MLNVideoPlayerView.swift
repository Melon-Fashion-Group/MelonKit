//
//  MLNVideoPlayerView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 18.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - MLNVideoPlayerView

///
///
///
@available(iOS 16.0, *)
public struct MLNVideoPlayerView<LoaderView: View, ErrorView: View>: View {

    // MARK: - Private properties

    @StateObject private var viewModel: VideoPlayerVM

    private let player: MLNVideoPlayer

    private let loaderView: LoaderView
    private let errorView: (_ action: @escaping () -> Void) -> ErrorView

    @Environment(\.videoGravity) private var videoGravity



    // MARK: - Body

    public var body: some View {
        Group {
            switch viewModel.state {
            case .loading:
                loaderView
            case .error:
                errorView(reload)
            case .loaded:
                VideoPlayerView(player: player.queue, gravity: videoGravity)
            }
        }
        .task(priority: .background) {
            await viewModel.load { fileURL in
                player.setupPlayer(with: fileURL)
            }
        }
    }



    // MARK: - Init

    ///
    ///
    ///
    public init(
        player: MLNVideoPlayer,
        @ViewBuilder loaderView: () -> LoaderView,
        @ViewBuilder errorView: @escaping (_ action: @escaping () -> Void) -> ErrorView
    ) {
        _viewModel = .init(wrappedValue: .init(request: player.urlRequest))

        self.player = player

        self.loaderView = loaderView()
        self.errorView = errorView
    }



    // MARK: - Private functions

    private func reload() {
        Task(priority: .background) {
            await viewModel.reload { fileURL in
                player.setupPlayer(with: fileURL)
            }
        }
    }
}
