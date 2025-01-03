//
//  MLNNetworkConfigurable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 21.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkConfigurable

///
///
///
@available(iOS 17.0, *)
public protocol MLNNetworkConfigurable: AnyObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var scheme: MLNNetworkConfiguration.Scheme { get }

    ///
    ///
    ///
    var test: StaticString { get }

    ///
    ///
    ///
    var prefix: StaticString { get }

    ///
    ///
    ///
    var name: StaticString { get }

    ///
    ///
    ///
    var domain: StaticString { get }

    ///
    ///
    ///
    var port: Int? { get }

    ///
    ///
    ///
    var path: StaticString { get }

    ///
    ///
    ///
    var anchor: StaticString { get }




    // MARK: - Public methods

    ///
    ///
    ///
    func getURL(for endpoint: MLNNetworkConfiguration.Endpoint, with items: [URLQueryItem]?) -> URL?
}
