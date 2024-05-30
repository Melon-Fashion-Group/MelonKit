//
//  ProductList.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - ProductList

@available(iOS 16.0, *)
final class ProductList: ProductListable {

    // MARK: - Public properties

    let productIDs: [String: String]



    // MARK: - Private properties

    // Apple iPhone's
    private let smartphones: [String: String] = [
        "iPhone11,2": "iPhone XS",
        "iPhone11,6": "iPhone XS Max",
        "iPhone11,8": "iPhone XR",

        "iPhone12,1": "iPhone 11",
        "iPhone12,3": "iPhone 11 Pro",
        "iPhone12,5": "iPhone 11 Pro Max",

        "iPhone12,8": "iPhone SE (2nd generation)",

        "iPhone13,2": "iPhone 12",
        "iPhone13,3": "iPhone 12 Pro",
        "iPhone13,1": "iPhone 12 mini",
        "iPhone13,4": "iPhone 12 Pro Max",

        "iPhone14,5": "iPhone 13",
        "iPhone14,4": "iPhone 13 mini",
        "iPhone14,2": "iPhone 13 Pro",
        "iPhone14,3": "iPhone 13 Pro Max",

        "iPhone14,6": "iPhone SE (3rd generation)",

        "iPhone14,7": "iPhone 14",
        "iPhone15,2": "iPhone 14 Pro",
        "iPhone15,3": "iPhone 14 Pro Max",
        "iPhone14,8": "iPhone 14 Plus",

        "iPhone15,4": "iPhone 15",
        "iPhone15,5": "iPhone 15 Plus",
        "iPhone16,1": "iPhone 15 Pro",
        "iPhone16,2": "iPhone 15 Pro Max"
    ]

    // Apple iPad's
    private let tablets: [String: String] = [
        "iPad7,3": "iPad Pro (10.5-inch) (Wi-Fi)",
        "iPad7,4": "iPad Pro (10.5-inch) (Wi-Fi + Cellular)",
        "iPad7,1": "iPad Pro (12.9-inch) (2nd generation) (Wi-Fi)",
        "iPad7,2": "iPad Pro (12.9-inch) (2nd generation) (Wi-Fi + Cellular)",

        "iPad7,5": "iPad (6th generation) (Wi-Fi)",
        "iPad7,6": "iPad (6th generation) (Wi-Fi + Cellular)",

        "iPad8,1": "iPad Pro 11-inch (1st generation) (Wi-Fi)",
        "iPad8,2": "iPad Pro 11-inch (1st generation) (Wi-Fi)",
        "iPad8,3": "iPad Pro 11-inch (1st generation) (Wi-Fi + Cellular)",
        "iPad8,4": "iPad Pro 11-inch (1st generation) (Wi-Fi + Cellular)",
        "iPad8,5": "iPad Pro (12.9-inch) (3rd generation) (Wi-Fi)",
        "iPad8,6": "iPad Pro (12.9-inch) (3rd generation) (Wi-Fi)",
        "iPad8,7": "iPad Pro (12.9-inch) (3rd generation) (Wi-Fi + Cellular)",
        "iPad8,8": "iPad Pro (12.9-inch) (3rd generation) (Wi-Fi + Cellular)",

        "iPad11,3": "iPad Air (3rd generation) (Wi-Fi)",
        "iPad11,4": "iPad Air (3rd generation) (Wi-Fi + Cellular)",
        "iPad11,1": "iPad mini (5th generation) (Wi-Fi)",
        "iPad11,2": "iPad mini (5th generation) (Wi-Fi + Cellular)",

        "iPad7,11": "iPad (7th generation) (Wi-Fi)",
        "iPad7,12": "iPad (7th generation) (Wi-Fi + Cellular)",

        "iPad8,9": "iPad Pro 11-inch (2nd generation) (Wi-Fi)",
        "iPad8,10": "iPad Pro 11-inch (2nd generation) (Wi-Fi + Cellular)",
        "iPad8,11": "iPad Pro 12.9-inch (4th generation) (Wi-Fi)",
        "iPad8,12": "iPad Pro 12.9-inch (4th generation) (Wi-Fi + Cellular)",

        "iPad11,6": "iPad (8th generation) (Wi-Fi)",
        "iPad11,7": "iPad (8th generation) (Wi-Fi + Cellular)",
        "iPad13,1": "iPad Air (4th generation) (Wi-Fi)",
        "iPad13,2": "iPad Air (4th generation) (Wi-Fi + Cellular)",

        "iPad13,4": "iPad Pro 11-inch (3rd generation) (Wi-Fi)",
        "iPad13,5": "iPad Pro 11-inch (3rd generation) (Wi-Fi)",
        "iPad13,6": "iPad Pro 11-inch (3rd generation) (Wi-Fi + Cellular)",
        "iPad13,7": "iPad Pro 11-inch (3rd generation) (Wi-Fi + Cellular)",
        "iPad13,8": "iPad Pro 12.9-inch (5th generation) (Wi-Fi)",
        "iPad13,9": "iPad Pro 12.9-inch (5th generation) (Wi-Fi)",
        "iPad13,10": "iPad Pro 12.9-inch (5th generation) (Wi-Fi + Cellular)",
        "iPad13,11": "iPad Pro 12.9-inch (5th generation) (Wi-Fi + Cellular)",

        "iPad12,1": "iPad (9th generation) (Wi-Fi)",
        "iPad12,2": "iPad (9th generation) (Wi-Fi + Cellular)",
        "iPad14,1": "iPad mini (6th generation) (Wi-Fi)",
        "iPad14,2": "iPad mini (6th generation) (Wi-Fi + Cellular)",

        "iPad13,16": "iPad Air (5th generation) (Wi-Fi)",
        "iPad13,17": "iPad Air (5th generation) (Wi-Fi + Cellular)",

        "iPad13,18": "iPad (10th generation) (Wi-Fi)",
        "iPad13,19": "iPad (10th generation) (Wi-Fi + Cellular)",
        "iPad14,3": "iPad Pro 11-inch (4th generation) (Wi-Fi)",
        "iPad14,4": "iPad Pro 11-inch (4th generation) (Wi-Fi + Cellular)",
        "iPad14,5": "iPad Pro 12.9-inch (6th generation) (Wi-Fi)",
        "iPad14,6": "iPad Pro 12.9-inch (6th generation) (Wi-Fi + Cellular)",

        "iPad14,8": "iPad Air 11-inch (M2) (Wi-Fi)",
        "iPad14,10": "iPad Air 13-inch (M2) (Wi-Fi)",
        "iPad14,9": "iPad Air 11-inch (M2) (Wi-Fi + Cellular)",
        "iPad14,11": "iPad Air 13-inch (M2) (Wi-Fi + Cellular)",
        "iPad16,3": "iPad Pro 11-inch (M4) (Wi-Fi)",
        "iPad16,5": "iPad Pro 13-inch (M4) (Wi-Fi)",
        "iPad16,4": "iPad Pro 11-inch (M4) (Wi-Fi + Cellular)",
        "iPad16,6": "iPad Pro 13-inch (M4) (Wi-Fi + Cellular)"
    ]



    // MARK: - Init

    init() {
        var productIDs: [String: String] = [:]

        productIDs.merge(smartphones) { current, _ in current }
        productIDs.merge(tablets) { current, _ in current }

        self.productIDs = productIDs
    }
}
