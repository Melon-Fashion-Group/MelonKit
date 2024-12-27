//
//  MLNPopover.PresentationType.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 27.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import SwiftUI


// MARK: - MLNPopover.PresentationType

extension MLNPopover {

    ///
    ///
    ///
    public enum PresentationType {

        ///
        ///
        ///
        case alert

        ///
        ///
        ///
        case cover

        ///
        ///
        ///
        case popup

        ///
        ///
        ///
        case sheet

        ///
        ///
        ///
        case toast(edge: ToastEdge)
    }
}
