//
//  ProductListable.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - ProductListable

protocol ProductListable: AnyObject {

    // MARK: - Public properties

    var productIDs: [String: String] { get }
}
