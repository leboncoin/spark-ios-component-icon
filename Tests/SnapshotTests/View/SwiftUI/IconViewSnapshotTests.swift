//
//  IconViewSnapshotTests.swift
//  SparkIconTests
//
//  Created by Jacklyn Situmorang on 24.08.23.
//  Copyright © 2023 Leboncoin. All rights reserved.
//

import XCTest
import SwiftUI
import SnapshotTesting
@testable import SparkIcon
@_spi(SI_SPI) import SparkCommonSnapshotTesting
import SparkTheming
@_spi(SI_SPI) import SparkThemingTesting
import SparkTheme

final class IconViewSnapshotTests: SwiftUIComponentSnapshotTestCase {

    // MARK: - Properties
    private let theme: Theme = SparkTheme.shared
    private var iconImage = Image(systemName: "lock.circle")

    // MARK: - Tests
    func test_swiftUI_icon_for_all_intents() throws {
        for intent in IconIntent.allCases {
            let iconView = IconView(
                theme: self.theme,
                intent: intent,
                size: .medium,
                iconImage: iconImage
            )
            self.assertSnapshotInDarkAndLight(matching: iconView, testName: "\(#function)-\(intent)")
        }
    }

    func test_swiftUI_icon_for_all_sizes() throws {
        for size in IconSize.allCases {
            let iconView = IconView(
                theme: self.theme,
                intent: .success,
                size: size,
                iconImage: iconImage
            )
            self.assertSnapshotInDarkAndLight(matching: iconView, testName: "\(#function)-\(size)")
        }
    }
}
