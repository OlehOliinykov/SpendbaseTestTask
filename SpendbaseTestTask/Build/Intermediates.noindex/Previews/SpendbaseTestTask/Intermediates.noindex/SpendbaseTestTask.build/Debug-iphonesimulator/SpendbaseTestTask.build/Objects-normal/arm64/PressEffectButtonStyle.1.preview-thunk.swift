@_private(sourceFile: "PressEffectButtonStyle.swift") import SpendbaseTestTask
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension PressEffectButtonStyle {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Sheets/Styles/PressEffectButtonStyle.swift", line: 12)
        Text(/*@START_MENU_TOKEN@*/__designTimeString("#65929.[1].[0].property.[0].[0].arg[0].value", fallback: "Hello, World!")/*@END_MENU_TOKEN@*/)
    
#sourceLocation()
    }
}

import struct SpendbaseTestTask.PressEffectButtonStyle
#Preview {
    PressEffectButtonStyle()
}

// Support for back-deployment.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, watchOS 6.0, *)
struct RegistryCompatibilityProvider_line_21: SwiftUI.PreviewProvider {
    static var previews: some SwiftUI.View {
        #if os(iOS)
        let __makePreview: () -> any SwiftUI.View = {
            PressEffectButtonStyle()
        }
        SwiftUI.VStack {
            SwiftUI.AnyView(__makePreview())
        }
        #else
        // The preview is not available.
        SwiftUI.EmptyView()
        #endif
    }
}




