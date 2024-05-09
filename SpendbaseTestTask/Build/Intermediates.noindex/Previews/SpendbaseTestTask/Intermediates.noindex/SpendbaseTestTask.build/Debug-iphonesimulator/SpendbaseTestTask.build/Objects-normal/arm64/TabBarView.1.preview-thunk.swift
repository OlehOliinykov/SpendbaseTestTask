@_private(sourceFile: "TabBarView.swift") import SpendbaseTestTask
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TabBarView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/TabBar/TabBarView.swift", line: 12)
        TabView {
            HomeView()
                .tabItem {
                    Label(__designTimeString("#5062.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Home"), systemImage: __designTimeString("#5062.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value", fallback: "house"))
                }
            
            TransactionsView()
                .tabItem {
                    Label(__designTimeString("#5062.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Transactions"), systemImage: __designTimeString("#5062.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[1].value", fallback: "list.dash"))
                }
            
            CardsView()
                .tabItem {
                    Label(__designTimeString("#5062.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "My Cards"), systemImage: __designTimeString("#5062.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[1].value", fallback: "creditcard"))
                }
            
            AccountView()
                .tabItem {
                    Label(__designTimeString("#5062.[1].[0].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Account"), systemImage: __designTimeString("#5062.[1].[0].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[0].arg[1].value", fallback: "person"))
                }
        }
    
#sourceLocation()
    }
}

import struct SpendbaseTestTask.TabBarView
#Preview {
    TabBarView()
}



