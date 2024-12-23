//
//  MLNNetworkError.HTTPStatusCode.swift
//  Melon Fashion SDK
//
//  Created by Dimka Novikov on 23.12.2024.
//  Copyright © 2024 Melon Fashion Group. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - MLNNetworkError.HTTPStatusCode

extension MLNNetworkError {

    ///
    ///
    ///
    public enum HTTPStatusCode: Int, Sendable {

        ///
        ///
        ///
        case unknown = -1

        // [100...200)

        ///
        ///
        ///
        case code100 = 100

        ///
        ///
        ///
        case code101 = 101

        ///
        ///
        ///
        case code102 = 102

        ///
        ///
        ///
        case code103 = 103

        // [200...300)

        ///
        ///
        ///
        case code200 = 200

        ///
        ///
        ///
        case code201 = 201

        ///
        ///
        ///
        case code202 = 202

        ///
        ///
        ///
        case code203 = 203

        ///
        ///
        ///
        case code204 = 204

        ///
        ///
        ///
        case code205 = 205

        ///
        ///
        ///
        case code206 = 206

        ///
        ///
        ///
        case code207 = 207

        ///
        ///
        ///
        case code208 = 208

        ///
        ///
        ///
        case code226 = 226

        // [300...400)

        ///
        ///
        ///
        case code300 = 300

        ///
        ///
        ///
        case code301 = 301

        ///
        ///
        ///
        case code302 = 302

        ///
        ///
        ///
        case code303 = 303

        ///
        ///
        ///
        case code304 = 304

        ///
        ///
        ///
        case code305 = 305

        ///
        ///
        ///
        case code306 = 306

        ///
        ///
        ///
        case code307 = 307

        ///
        ///
        ///
        case code308 = 308

        // [400...500)

        ///
        ///
        ///
        case code400 = 400

        ///
        ///
        ///
        case code401 = 401

        ///
        ///
        ///
        case code402 = 402

        ///
        ///
        ///
        case code403 = 403

        ///
        ///
        ///
        case code404 = 404

        ///
        ///
        ///
        case code405 = 405

        ///
        ///
        ///
        case code406 = 406

        ///
        ///
        ///
        case code407 = 407

        ///
        ///
        ///
        case code408 = 408

        ///
        ///
        ///
        case code409 = 409

        ///
        ///
        ///
        case code410 = 410

        ///
        ///
        ///
        case code411 = 411

        ///
        ///
        ///
        case code412 = 412

        ///
        ///
        ///
        case code413 = 413

        ///
        ///
        ///
        case code414 = 414

        ///
        ///
        ///
        case code415 = 415

        ///
        ///
        ///
        case code416 = 416

        ///
        ///
        ///
        case code417 = 417

        ///
        ///
        ///
        case code418 = 418

        ///
        ///
        ///
        case code421 = 421

        ///
        ///
        ///
        case code422 = 422

        ///
        ///
        ///
        case code423 = 423

        ///
        ///
        ///
        case code424 = 424

        ///
        ///
        ///
        case code425 = 425

        ///
        ///
        ///
        case code426 = 426

        ///
        ///
        ///
        case code428 = 428

        ///
        ///
        ///
        case code429 = 429

        ///
        ///
        ///
        case code431 = 431

        ///
        ///
        ///
        case code451 = 451

        // [500...600)


        ///
        ///
        ///
        case code500 = 500

        ///
        ///
        ///
        case code501 = 501

        ///
        ///
        ///
        case code502 = 502

        ///
        ///
        ///
        case code503 = 503

        ///
        ///
        ///
        case code504 = 504

        ///
        ///
        ///
        case code505 = 505

        ///
        ///
        ///
        case code506 = 506

        ///
        ///
        ///
        case code507 = 507

        ///
        ///
        ///
        case code508 = 508

        ///
        ///
        ///
        case code510 = 510

        ///
        ///
        ///
        case code511 = 511



        // MARK: - Public properties

        var isSuccess: Bool {
            return switch self.rawValue {
            case 200 ..< 300: true
            default: false
            }
        }
    }
}
