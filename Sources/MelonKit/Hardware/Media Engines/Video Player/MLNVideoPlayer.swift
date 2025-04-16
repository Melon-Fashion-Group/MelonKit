//
//  MLNVideoPlayer.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import AVKit



// MARK: - MLNVideoPlayer

///
///
///
@available(iOS 17.0, *)
public final class MLNVideoPlayer: VideoPlayable {

    // MARK: - Public properties

    ///
    ///
    ///
    public var isMuted: Bool {
        get { queue.isMuted }
        set { queue.isMuted = newValue }
    }

    ///
    ///
    ///
    public var volume: Float {
        get { queue.volume }
        set { queue.volume = newValue }
    }

    ///
    ///
    ///
    public var backgroundPlaybackPolicy: AVPlayerAudiovisualBackgroundPlaybackPolicy {
        get { queue.audiovisualBackgroundPlaybackPolicy }
        set { queue.audiovisualBackgroundPlaybackPolicy = newValue }
    }

    ///
    ///
    ///
    public let queue = AVQueuePlayer()



    // MARK: - Private properties

    private var looper: AVPlayerLooper?



    // MARK: - Init

    ///
    ///
    ///
    public init() { }



    // MARK: - Public methods

    ///
    ///
    ///
    public func play() {
        queue.play()
    }

    ///
    ///
    ///
    public func pause() {
        queue.pause()
    }

    ///
    ///
    ///
    public func stop() {
        queue.pause()
        queue.seek(to: .zero)
    }

    ///
    ///
    ///
    public func disableLooping() {
        looper?.disableLooping()
    }

    ///
    ///
    ///
    public func setupPlayer(with fileURL: URL) {
        let asset = AVURLAsset(url: fileURL)
        let item = AVPlayerItem(asset: asset)

        queue.insert(item, after: .none)
        looper = .init(player: queue, templateItem: item)
    }
}
