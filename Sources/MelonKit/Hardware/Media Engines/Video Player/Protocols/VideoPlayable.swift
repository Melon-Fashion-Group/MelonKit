//
//  VideoPlayable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import AVKit



// MARK: - VideoPlayable

@available(iOS 17.0, *)
protocol VideoPlayable: AnyObject {

    // MARK: - Public properties

    var isMuted: Bool { get set }
    var volume: Float { get set }
    var backgroundPlaybackPolicy: AVPlayerAudiovisualBackgroundPlaybackPolicy { get set }
    var request: URLRequest { get }
    var queue: AVQueuePlayer { get }



    // MARK: - Init

    init(request urlRequest: URLRequest)



    // MARK: - Public methods

    func play()
    func pause()
    func stop()
    func disableLooping()
    func setupPlayer(with fileURL: URL)
}
