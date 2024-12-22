//
//  MLNNetworkConnection.VPNProtocols.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 22.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkConnection.VPNProtocols

extension MLNNetworkConnection {
    enum VPNProtocols: String, CaseIterable {
        case ipsec
        case ppp
        case pptp
        case tap
        case tun
        case utun
    }
}
