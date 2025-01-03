//
//  MLNKeychainStorage.CloudSaving.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - CloudSaving

@available(iOS 17.0, *)
extension MLNKeychainStorage {

    ///
    ///
    ///
    public enum CloudSaving {

        ///
        ///
        ///
        case disable

        ///
        ///
        ///
        case enable(accessGroup: String)
    }
}
