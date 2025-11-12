//
//  IconIntentTests.swift
//  SparkComponentIcon
//
//  Created by robin.lemaire on 06/11/2025.
//  Copyright © 2025 Leboncoin. All rights reserved.
//

import XCTest
@testable import SparkComponentIcon
@_spi(SI_SPI) import SparkThemingTesting

final class IconIntentTests: XCTestCase {

    // MARK: - Tests

    func test_default_equals_basic() {
        // GIVEN / WHEN / THEN
        XCTAssertEqual(IconIntent.default, .basic)
    }

    // MARK: - Equatable Tests

    func test_equality_same_cases() {
        // GIVEN
        let testCases: [(IconIntent, IconIntent)] = [
            (.accent, .accent),
            (.alert, .alert),
            (.basic, .basic),
            (.error, .error),
            (.info, .info),
            (.main, .main),
            (.neutral, .neutral),
            (.success, .success),
            (.support, .support)
        ]

        // WHEN / THEN
        for (lhs, rhs) in testCases {
            XCTAssertEqual(lhs, rhs, "Expected \(lhs) to equal \(rhs)")
        }
    }

    func test_equality_different_cases() {
        // GIVEN
        let testCases: [(IconIntent, IconIntent)] = [
            (.accent, .alert),
            (.basic, .error),
            (.info, .main),
            (.neutral, .success),
            (.support, .accent)
        ]

        // WHEN / THEN
        for (lhs, rhs) in testCases {
            XCTAssertNotEqual(lhs, rhs, "Expected \(lhs) to not equal \(rhs)")
        }
    }

    func test_equality_custom_same_color_token() {
        // GIVEN
        let intent1 = IconIntent.custom(ColorTokenGeneratedMock.blue())
        let intent2 = IconIntent.custom(ColorTokenGeneratedMock.blue())

        // WHEN / THEN
        XCTAssertEqual(intent1, intent2)
    }

    func test_equality_custom_different_color_token() {
        // GIVEN
        let intent1 = IconIntent.custom(ColorTokenGeneratedMock.blue())
        let intent2 = IconIntent.custom(ColorTokenGeneratedMock.red())

        // WHEN / THEN
        XCTAssertNotEqual(intent1, intent2)
    }
}
