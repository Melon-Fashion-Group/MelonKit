//
//  MLNNetworkConnection.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkConnection

///
///
///
@available(iOS 16.0, *)
public final class MLNNetworkConnection: MLNNetworkConnectable {

    // MARK: - Public properties

    ///
    ///
    ///
    public var isVPNEnabled: Bool {
        guard let proxySettings = CFNetworkCopySystemProxySettings() else {
            return false
        }

        let dictionary = proxySettings.takeRetainedValue() as NSDictionary

        guard
            let keys = dictionary["__SCOPED__"] as? NSDictionary,
            let allKeys = keys.allKeys as? [String]
        else {
            return false
        }

        for key in allKeys {
            for `protocol` in VPNProtocols.allCases {
                if key.starts(with: `protocol`.rawValue) {
                    return true
                }
            }
        }

        return false
    }



    // MARK: - Init

    ///
    ///
    ///
    public init() { }
}
