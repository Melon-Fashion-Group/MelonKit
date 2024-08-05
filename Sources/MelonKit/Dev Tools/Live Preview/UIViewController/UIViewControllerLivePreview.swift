//
//  UIViewControllerLivePreview.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - UIViewControllerLivePreview

@available(iOS 17.0, *)
struct UIViewControllerLivePreview: UIViewControllerRepresentable {

    // MARK: - Private properties

    private let viewController: UIViewController



    // MARK: - Init

    init(viewController: UIViewController) {
        self.viewController = viewController
    }



    // MARK: - Public methods

    func makeUIViewController(context: Context) -> some UIViewController { viewController }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}
