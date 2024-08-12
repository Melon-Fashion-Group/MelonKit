//
//  MLNDevice.swift
//  MelonKit
//
//  Created by Dimka Novikov on 30.05.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation
import MetalKit



// MARK: - MLNDevice

///
/// A class that provides information about the current device and its hardware and software.
///
@available(iOS 16.0, *)
public final class MLNDevice: MLNDeviceSpecificationable {

    // MARK: - Public properties

    ///
    /// A shared property that allows you to access the properties and methods of the service.
    ///
    public static let current: MLNDeviceSpecificationable = MLNDevice()

    ///
    /// A property that allows you to obtain general information about the current device.
    ///
    public var general: General? {
        guard let deviceName else {
            return nil
        }

        let deviceType: General.DeviceType

        if deviceName.contains(General.DeviceType.smartphone.rawValue) {
            deviceType = .smartphone
        } else {
            deviceType = .tablet
        }

        let processInfo = ProcessInfo()

        UIDevice.current.isBatteryMonitoringEnabled = true

        return .init(
            name: deviceName,
            type: deviceType,
            battery: .init(
                state: UIDevice.current.batteryState,
                level: UIDevice.current.batteryLevel
            ),
            thermalState: processInfo.thermalState
        )
    }

    ///
    /// A property that allows you to obtain information about the operating system on the current device.
    ///
    public var operatingSystem: OperatingSystem? {
        guard let general else {
            return nil
        }

        let osName: OperatingSystem.Name = switch general.type {
        case .smartphone: .iOS
        case .tablet: .iPadOS
        }

        let processInfo = ProcessInfo()

        let osVersion: OperatingSystem.Version = .init(
            major: processInfo.operatingSystemVersion.majorVersion,
            minor: processInfo.operatingSystemVersion.minorVersion,
            patch: processInfo.operatingSystemVersion.patchVersion
        )

        let osFullname = "\(osName) \(osVersion.description)"

        return .init(name: osName, fullname: osFullname, version: osVersion)
    }

    ///
    /// A property that allows you to obtain information about the software of the current device.
    ///
    public var software: Software? {
        guard let _ = deviceName else {
            return nil
        }

#if targetEnvironment(simulator)
        let isSimulatorEnvironment = true
#else
        let isSimulatorEnvironment = false
#endif

        let processInfo = ProcessInfo()

        return .init(
            process: .init(
                name: processInfo.processName,
                identifier: processInfo.processIdentifier
            ),
            isSimulatorEnvironment: isSimulatorEnvironment,
            isLowPowerModeEnabled: processInfo.isLowPowerModeEnabled
        )
    }

    ///
    /// A property that allows you to obtain information about the hardware of the current device.
    ///
    public var hardware: Hardware? {
        guard
            let _ = deviceName,
            let metalDevice = MTLCreateSystemDefaultDevice()
        else {
            return nil
        }

        let cpuName = getCPUName(from: metalDevice)

        let processInfo = ProcessInfo()

        let cpu = Hardware.CPU(
            name: cpuName,
            numberOfCores: processInfo.processorCount
        )

        let ram = Hardware.RAM(
            isUnified: metalDevice.hasUnifiedMemory,
            physicalSize: processInfo.physicalMemory
        )

        let gpu = Hardware.GPU(
            name: metalDevice.name,
            registryID: metalDevice.registryID,
            memorySize: metalDevice.recommendedMaxWorkingSetSize
        )

        return .init(cpu: cpu, ram: ram, gpu: gpu)
    }

    ///
    /// A property that allows you to obtain information about all/specifications of the current device.
    ///
    public var specification: Specification? {
        guard let general, let operatingSystem, let software, let hardware else {
            return nil
        }

        return .init(
            general: general,
            operatingSystem: operatingSystem,
            software: software,
            hardware: hardware
        )
    }



    // MARK: - Private properties

    private let deviceModelID: String? = {
#if targetEnvironment(simulator)
        let processInfo = ProcessInfo()

        guard let simulatorModelID = processInfo.environment["SIMULATOR_MODEL_IDENTIFIER"] else {
            return nil
        }

        return simulatorModelID
#elseif os(iOS)
        var systemInfo = utsname()

        uname(&systemInfo)

        return .init(
            bytes: Data(
                bytes: &systemInfo.machine,
                count: .init(_SYS_NAMELEN)
            ),
            encoding: .ascii
        )!
            .trimmingCharacters(in: .controlCharacters)
#endif
    }()

    private let deviceName: String?



    // MARK: - Init

    private init() {
        guard let deviceModelID else {
            deviceName = nil

            return
        }

        let productList = ProductList()

        deviceName = productList.productIDs[deviceModelID]
    }



    // MARK: - Private functions

    private func getCPUName(from metalDevice: MTLDevice) -> String {
        let cpuName = metalDevice.name
            .replacingOccurrences(of: "GPU", with: String.empty)
            .trimmingCharacters(in: .whitespacesAndNewlines)

        return cpuName.contains("Apple") ? cpuName : "-"
    }
}
