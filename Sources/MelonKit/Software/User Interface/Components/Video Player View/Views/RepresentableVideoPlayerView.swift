//
//  RepresentableVideoPlayerView.swift
//  MelonKit
//
//  Created by Dimka Novikov on 18.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import AVKit
import SwiftUI



// MARK: - RepresentableVideoPlayerView

@available(iOS 16.0, *)
final class RepresentableVideoPlayerView: UIView {

    // MARK: - Private properties

    private let playerLayer = AVPlayerLayer()



    // MARK: - Init

    convenience init(
        player: AVQueuePlayer,
        gravity videoGravity: AVLayerVideoGravity
    ) {
        self.init(frame: .zero)

        playerLayer.player = player
        playerLayer.videoGravity = videoGravity
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupSublayers()
    }

    required init?(coder: NSCoder) {
        fatalError("\(Self.self) doesn't support XIB layout.")
    }



    // MARK: - Overriding parent methods

    override func layoutSubviews() {
        super.layoutSubviews()

        playerLayer.frame = bounds
    }



    // MARK: - Private functions

    private func setupSublayers() {
        layer.addSublayer(playerLayer)
    }
}
