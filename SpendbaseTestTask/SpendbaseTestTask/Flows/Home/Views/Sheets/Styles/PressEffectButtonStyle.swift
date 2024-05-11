//
//  PressEffectButtonStyle.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 11.05.2024.
//

import SwiftUI

private enum Constants {
    static let defaultOpacity: Double = 1.0
    
    static let defaultHover: Double = 1.0
    static let actionHover: Double = 0.975
    
    static let pressedStateScale: Double = 0.95
    
    static let scaleAnimationDuration: Double = 0.1
    static let pressAnimationDuration: Double = 0.1
}

struct PressEffectButtonStyle: ButtonStyle {
    @State private var scale: CGFloat = 1

    func makeBody(configuration: ButtonStyleConfiguration) -> some View {
        configuration
            .label
            .scaleEffect(configuration.isPressed ? Constants.pressedStateScale : scale)
            .opacity(configuration.isPressed ? Constants.pressedStateScale : Constants.defaultOpacity)
            .onHover { hovering in
                scale = hovering ? Constants.actionHover : Constants.defaultHover
            }
            .animation(.easeInOut(duration: Constants.scaleAnimationDuration), value: scale)
            .animation(.easeInOut(duration: Constants.pressAnimationDuration), value: configuration.isPressed)
    }
}
