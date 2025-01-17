//
//  MLNVideoPlayer.VideoScaling.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNVideoPlayer.VideoScaling

@available(iOS 17.0, *)
extension MLNVideoPlayer {

    ///
    ///
    ///
    public enum VideoScaling: Sendable {

        ///
        ///
        ///
        case resize

        ///
        ///
        ///
        case aspectFit

        ///
        ///
        ///
        case aspectFill
    }
}
