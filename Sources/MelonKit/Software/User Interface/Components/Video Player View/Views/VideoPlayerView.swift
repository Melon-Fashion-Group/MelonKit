//
//  VideoPlayerView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 18.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import AVKit
import SwiftUI



// MARK: - VideoPlayerView

@available(iOS 16.0, *)
struct VideoPlayerView: UIViewRepresentable {

    // MARK: - Private properties

    private let player: AVQueuePlayer
    private let videoGravity: AVLayerVideoGravity



    // MARK: - Init

    init(
        player: AVQueuePlayer,
        gravity videoGravity: AVLayerVideoGravity
    ) {
        self.player = player
        self.videoGravity = videoGravity
    }



    // MARK: - Public methods

    func makeUIView(context: Context) -> RepresentableVideoPlayerView {
        .init(player: player, gravity: videoGravity)
    }

    func updateUIView(_ uiView: RepresentableVideoPlayerView, context: Context) { }
}
