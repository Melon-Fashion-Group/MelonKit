//
//  Data+.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 23.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - Data+

extension Data {

    // MARK: - Public methods

    ///
    ///
    ///
    public func printJSON(formatted: Bool = false) {
        if formatted {
            printFormattedJSON()
        } else {
            printJSON()
        }
    }



    // MARK: - Private functions

    private func printFormattedJSON() {
        guard
            let json = try?  JSONSerialization.jsonObject(with: self, options: .mutableContainers),
            let data = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
        else {
            assertionFailure("Malformed JSON"); return
        }

        printJSONData(data: data)
    }

    private func printJSON() {
        printJSONData(data: self)
    }

    private func printJSONData(data: Data) {
        let json = String(decoding: data, as: UTF8.self)

        print(json)
    }
}
