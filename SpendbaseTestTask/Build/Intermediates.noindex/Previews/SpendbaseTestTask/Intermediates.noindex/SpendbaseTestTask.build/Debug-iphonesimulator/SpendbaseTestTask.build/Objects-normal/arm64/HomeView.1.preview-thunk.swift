@_private(sourceFile: "HomeView.swift") import SpendbaseTestTask
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension HomeView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 18)
        VStack {
            Image(systemName: __designTimeString("#3282.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "globe"))
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(__designTimeString("#3282.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Home"))
        }
        .padding()
    
#sourceLocation()
    }
}

import struct SpendbaseTestTask.HomeView
#if DEBUG

#Preview {
    NavigationView {
        HomeView()
    }
}

#endif


