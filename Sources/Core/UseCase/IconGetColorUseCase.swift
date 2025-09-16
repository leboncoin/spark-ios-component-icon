//
//  IconGetColorUseCase.swift
//  Spark
//
//  Created by Jacklyn Situmorang on 10.07.23.
//  Copyright © 2023 Leboncoin. All rights reserved.
//

import Foundation
import SparkTheming

// sourcery: AutoMockable
protocol IconGetColorUseCaseable {
    func execute(for intent: IconIntent, colors: any Colors) -> any ColorToken
}

struct IconGetColorUseCase: IconGetColorUseCaseable {

    // MARK: - Methods

    func execute(for intent: IconIntent, colors: any Colors) -> any ColorToken {
        switch intent {
        case .accent:
            return colors.accent.accent
        case .alert:
            return colors.feedback.alert
        case .basic:
            return colors.basic.basic
        case .error:
            return colors.feedback.error
        case .info:
            return colors.feedback.info
        case .main:
            return colors.main.main
        case .neutral:
            return colors.feedback.neutral
        case .success:
            return colors.feedback.success
        case .support:
            return colors.support.support
        }
    }
}
