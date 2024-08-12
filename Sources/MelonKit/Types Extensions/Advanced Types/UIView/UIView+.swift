//
//  UIView+.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - UIView+

extension UIView {

    // MARK: - Public methods

    ///
    /// A method that represents a subclass of UIView into a view supported by SwiftUI Canvas that implements the View protocol.
    ///
    /// Example:
    ///
    ///     #Preview(.init(describing: CustomView.self)) {
    ///         CustomView()
    ///             .livePreview()
    ///     }
    ///
    /// - Authors: Dmitry Novikov · Melon Fashion Group
    ///
    /// - Bug: None
    ///
    /// - Returns: A view supported by SwiftUI Canvas that implements the View protocol.
    ///
    @available(iOS 16.0, *)
    public func livePreview() -> some View {
        UIViewLivePreview(view: self)
    }
}
