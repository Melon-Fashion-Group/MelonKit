//
//  Sandbox.playground
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


//
//  This is a place to test hypotheses, implement test services and framework functionality
//  to test its operation with their long-term implementation of *.swift files.
//


// MARK: Import section

import Foundation



// MARK: - Helpers

@available(iOS 16.0, *)
public typealias MLNObject = AnyObject & CustomDebugStringConvertible

@available(iOS 16.0, *)
public protocol MLNServiceable: MLNObject { }

extension MLNServiceable {
    public var debugDescription: String {
        "This class supports Dependency Injection and can be registered via MLNServiceContainer"
    }
}



// MARK: - Implementable Service










// TODO: - Create -

// 1. App Layer ⚠️
//    1. Inversion of Control ✅
//       1. Dependency Injection ✅
//    2. Navigation ❌
//       1. Routing ❌
// 2. Developer Tools ⚠️
//    1. Device Specification ✅
//    2. Live Preview ✅
//    3. Logger ❌ [❗️: depends on File Storage]
//    4. Project Specifications ✅
//       1. App Specification ✅
//       2. Framework Specification ✅
// 3. Foundation ✅
// 4. Hardware ⚠️
//    1. Data Storages ❌
//       1. Caching Storage ❌ [❗️: depends on File Storage]
//       2. Data Codables ❌
//       3. Default Storage ❌
//       4. File Storage ❌
//       5. Keychain Storage ❌
//    2. Encryption Algorithms ✅
//       1. SHA-2 ✅
//    3. Haptic Feedbacks ✅
//       1. Haptic Feedback ✅
//    4. Media Engines ❌
//       1. Video Player ❌
//    5. Network Interaction ❌
//       1. Network Configuration ❌
//       2. Network Connection ❌
//       3. Network Manager ❌
// 5. Sandbox
// 6. Software ❌
//    2. User Interface ❌
//       1. Components ❌
//       2. Modifiers ❌
//       3. Styles ❌
// 7. Types Extensions ⚠️
//    1. Advanced Types ⚠️
//    2. Foundation Types ⚠️
// 7. Utilities ✅
