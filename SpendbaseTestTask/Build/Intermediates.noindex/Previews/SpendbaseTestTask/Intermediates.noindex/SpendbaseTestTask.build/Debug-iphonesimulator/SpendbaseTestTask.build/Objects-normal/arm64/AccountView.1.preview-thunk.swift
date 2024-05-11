@_private(sourceFile: "AccountView.swift") import SpendbaseTestTask
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension AccountView {
    @_dynamicReplacement(for: placeholderMessage) private var __preview__placeholderMessage: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Account/Views/AccountView.swift", line: 33)
        Image(__designTimeString("#5184.[2].[2].property.[0].[0].arg[0].value", fallback: "placeholder"))
    
#sourceLocation()
    }
}

extension AccountView {
    @_dynamicReplacement(for: placeholderCompostion) private var __preview__placeholderCompostion: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Account/Views/AccountView.swift", line: 20)
        NavigationView {
            GeometryReader { geometry in
                ScrollView(.vertical, showsIndicators: __designTimeBoolean("#5184.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value", fallback: false)) {
                    placeholderMessage
                        .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                }                
            }
            .background(.backgroundGray)
            .navigationTitle(Constants.navigationTitle)
        }
    
#sourceLocation()
    }
}

extension AccountView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Account/Views/AccountView.swift", line: 16)
        placeholderCompostion
    
#sourceLocation()
    }
}

import enum SpendbaseTestTask.Constants
import struct SpendbaseTestTask.AccountView
#if DEBUG

#Preview {
    AccountView()
}

// Support for back-deployment.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, watchOS 6.0, *)
struct RegistryCompatibilityProvider_line_51: SwiftUI.PreviewProvider {
    static var previews: some SwiftUI.View {
        #if os(iOS)
        let __makePreview: () -> any SwiftUI.View = {
            AccountView()
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


#endif


