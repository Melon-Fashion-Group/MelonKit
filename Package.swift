// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.


//
//  Package.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import PackageDescription



// MARK: - Swift Package

let package = Package(
    name: "Melon Fashion",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MelonKit",
            targets: ["MelonKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Lofticries-Games/SubrosaKit", from: "1.1.3")
    ],
    targets: [
        .target(
            name: "MelonKit",
            dependencies: [
                .product(name: "SubrosaKit", package: "SubrosaKit")
            ]
        ),
        .testTarget(
            name: "MelonKitTests",
            dependencies: ["MelonKit"]
        )
    ]
)
