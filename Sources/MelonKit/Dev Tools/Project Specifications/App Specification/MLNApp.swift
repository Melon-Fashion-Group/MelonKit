//
//  MLNApp.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNApp

///
/// A class that implements an app specification.
///
@available(iOS 17.0, *)
public final class MLNApp: MLNAppSpecificationable {

    // MARK: - Public properties

    ///
    /// A shared property that allows you to access the properties and methods of the service.
    ///
    public static let info: MLNAppSpecificationable = MLNApp()

    ///
    /// A property that allows you to get the version of the running app.
    ///
    public let version: Version = {
        guard let string = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
            return .init()
        }

        let components = string.components(separatedBy: ["."])

        var majorVersion: UInt16 = .zero
        var minorVersion: UInt16 = .zero
        var patchVersion: UInt16 = .zero

        switch components.count {
        case 3:
            guard let patch = UInt16(components[2]) else { fallthrough }

            patchVersion = patch

            fallthrough
        case 2:
            guard let minor = UInt16(components[1]) else { fallthrough }

            minorVersion = minor

            fallthrough
        case 1:
            guard let major = UInt16(components[0]) else { fallthrough }

            majorVersion = major
        default:
            return .init()
        }

        return .init(major: majorVersion, minor: minorVersion, patch: patchVersion)
    }()

    ///
    /// A property that allows you to get the build version of the running app.
    ///
    public let build: Build = {
        guard let string = Bundle.main.infoDictionary?["CFBundleVersion"] as? String else {
            return .zero
        }

        guard let build = UInt16(string) else {
            return .zero
        }

        return build
    }()



    // MARK: - Init

    private init() { }
}
