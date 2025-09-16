//
//  IconViewModel.swift
//  SparkComponentIcon
//
//  Created by Jacklyn Situmorang on 11.07.23.
//  Copyright © 2023 Leboncoin. All rights reserved.
//

import Foundation
import SparkTheming

final class IconViewModel: ObservableObject {

    // MARK: - Properties

    private(set) var theme: any Theme
    private(set) var intent: IconIntent
    private let getColorUseCase: any IconGetColorUseCaseable

    // MARK: - Published properties

    @Published var color: any ColorToken
    @Published var size: IconSize

    // MARK: - Initializers

    init(
        theme: any Theme,
        intent: IconIntent,
        size: IconSize,
        getColorUseCase: any IconGetColorUseCaseable = IconGetColorUseCase()
    ) {
        self.theme = theme
        self.intent = intent
        self.size = size
        self.getColorUseCase = getColorUseCase
        self.color = getColorUseCase.execute(for: intent, colors: theme.colors)
    }

    // MARK: - Setters

    func set(theme: any Theme) {
        self.theme = theme
        self.updateColor()
    }

    func set(intent: IconIntent) {
        if self.intent != intent {
            self.intent = intent
            self.updateColor()
        }
    }

    func set(size: IconSize) {
        if self.size != size {
            self.size = size
        }
    }

    // MARK: - Private funcs

    private func updateColor() {
        self.color = self.getColorUseCase.execute(for: self.intent, colors: self.theme.colors)
    }
}
