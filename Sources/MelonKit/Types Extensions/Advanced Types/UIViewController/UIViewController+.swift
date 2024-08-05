//
//  UIViewController+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - UIViewController+

extension UIViewController {

    // MARK: - Public methods

    ///
    /// A method that represents a subclass of UIViewController into a view supported by SwiftUI Canvas that implements the View protocol.
    ///
    /// Example:
    ///
    ///     #Preview(.init(describing: CustomViewController.self)) {
    ///         CustomViewController()
    ///             .livePreview()
    ///     }
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Returns: A view supported by SwiftUI Canvas that implements the View protocol.
    ///
    @available(iOS 17.0, *)
    public func livePreview() -> some View {
        UIViewControllerLivePreview(viewController: self)
    }
}
