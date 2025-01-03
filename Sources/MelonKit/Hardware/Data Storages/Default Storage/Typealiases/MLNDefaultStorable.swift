//
//  MLNDefaultStorable.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 20.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNDefaultStorable

///
///
///
@available(iOS 17.0, *)
public typealias MLNDefaultStorable = MLNDefaultLoadable & MLNDefaultRemovable & MLNDefaultReplaceable & MLNDefaultSaveable
