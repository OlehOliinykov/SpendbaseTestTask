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
    @_dynamicReplacement(for: accountTab) private var __preview__accountTab: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/TabBar/TabBarView.swift", line: 81)
        AccountView()
            .tabItem {
                VStack {
                    Image(__designTimeString("#9876.[2].[8].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "account"))
                        .renderingMode(.template)
                    
                    Text(Constants.accountTabText)
                }
            }
            .tag(__designTimeInteger("#9876.[2].[8].property.[0].[0].modifier[1].arg[0].value", fallback: 4))
    
#sourceLocation()
    }
}

extension TabBarView {
    @_dynamicReplacement(for: cardsTab) private var __preview__cardsTab: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/TabBar/TabBarView.swift", line: 68)
        CardsView()
            .tabItem {
                VStack {
                    Image(__designTimeString("#9876.[2].[7].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "card"))
                        .renderingMode(.template)
                    
                    Text(Constants.cardsTabText)
                }
            }
            .tag(__designTimeInteger("#9876.[2].[7].property.[0].[0].modifier[1].arg[0].value", fallback: 3))
    
#sourceLocation()
    }
}

extension TabBarView {
    @_dynamicReplacement(for: transactionsTab) private var __preview__transactionsTab: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/TabBar/TabBarView.swift", line: 55)
        TransactionsView()
            .tabItem {
                VStack {
                    Image(__designTimeString("#9876.[2].[6].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "transactions"))
                        .renderingMode(.template)
                    
                    Text(Constants.transactionsTabText)
                }
            }
            .tag(__designTimeInteger("#9876.[2].[6].property.[0].[0].modifier[1].arg[0].value", fallback: 2))
    
#sourceLocation()
    }
}

extension TabBarView {
    @_dynamicReplacement(for: homeTab) private var __preview__homeTab: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/TabBar/TabBarView.swift", line: 42)
        HomeView(networkClient: networkClient)
            .tabItem {
                VStack {
                    Image(__designTimeString("#9876.[2].[5].property.[0].[0].modifier[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "home"))
                        .renderingMode(.template)
                    
                    Text(Constants.homeTabText)
                }
            }
            .tag(__designTimeInteger("#9876.[2].[5].property.[0].[0].modifier[1].arg[0].value", fallback: 1))
    
#sourceLocation()
    }
}

extension TabBarView {
    @_dynamicReplacement(for: tabs) private var __preview__tabs: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/TabBar/TabBarView.swift", line: 30)
        TabView(selection: $selectedTab) {
            homeTab
            
            transactionsTab
            
            cardsTab
            
            accountTab
        }
    
#sourceLocation()
    }
}

extension TabBarView {
    @_dynamicReplacement(for: tabBarViewComposition) private var __preview__tabBarViewComposition: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/TabBar/TabBarView.swift", line: 26)
        tabs
    
#sourceLocation()
    }
}

extension TabBarView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/TabBar/TabBarView.swift", line: 22)
        tabBarViewComposition
    
#sourceLocation()
    }
}

import enum SpendbaseTestTask.Constants
import struct SpendbaseTestTask.TabBarView
#Preview {
    TabBarView()
}

// Support for back-deployment.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, watchOS 6.0, *)
struct RegistryCompatibilityProvider_line_120: SwiftUI.PreviewProvider {
    static var previews: some SwiftUI.View {
        #if os(iOS)
        let __makePreview: () -> any SwiftUI.View = {
            TabBarView()
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




