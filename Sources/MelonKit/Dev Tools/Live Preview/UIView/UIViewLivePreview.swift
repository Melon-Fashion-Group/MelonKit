//
//  UIViewLivePreview.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI



// MARK: - UIViewLivePreview

@available(iOS 17.0, *)
struct UIViewLivePreview: UIViewRepresentable {

    // MARK: - Private properties

    private let view: UIView



    // MARK: - Init

    init(view: UIView) {
        self.view = view
    }



    // MARK: - Public methods

    func makeUIView(context: Context) -> some UIView { view }
    func updateUIView(_ uiView: UIViewType, context: Context) { }
}
