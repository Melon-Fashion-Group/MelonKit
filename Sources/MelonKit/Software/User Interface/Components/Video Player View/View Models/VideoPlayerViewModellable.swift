//
//  VideoPlayerViewModellable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 18.08.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - VideoPlayerViewModellable

@MainActor
@available(iOS 16.0, *)
protocol VideoPlayerViewModellable: ObservableObject {

    // MARK: - Public properties

    var state: VideoPlayerVM.State { get }



    // MARK: - Init

    init(request urlRequest: URLRequest)



    // MARK: - Public methods

    func load(_ completion: (_ url: URL) -> Void) async
    func reload(_ completion: (_ url: URL) -> Void) async
}
