//
//  FrameViewModifier.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 11.05.2024.
//

import SwiftUI

private enum Constants {
    static let frameCornerRadius: Double = 16
}

struct FrameViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .cornerRadius(Constants.frameCornerRadius)
            .padding()
    }
}
