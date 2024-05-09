//
//  TabBarView.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 09.05.2024.
//

import SwiftUI

private enum Constants {
    static let homeTabText: String = "Home"
    static let transactionsTabText: String = "Transactions"
    static let cardsTabText: String = "My Cards"
    static let accountTabText: String = "Account"
}

struct TabBarView: View {
    @State private var selectedTab: Int = 1
        
    var body: some View {
        tabBarViewComposition
    }
    
    private var tabBarViewComposition: some View {
        tabs
    }
    
    private var tabs: some View {
        TabView(selection: $selectedTab) {
            homeTab
            
            transactionsTab
            
            cardsTab
            
            accountTab
        }
    }
    
    private var homeTab: some View {
        HomeView()
            .tabItem {
                VStack {
                    Image("home")
                        .renderingMode(.template)
                    
                    Text(Constants.homeTabText)
                }
            }
            .tag(1)
    }
    
    private var transactionsTab: some View {
        TransactionsView()
            .tabItem {
                VStack {
                    Image("transactions")
                        .renderingMode(.template)
                    
                    Text(Constants.transactionsTabText)
                }
            }
            .tag(2)
    }
    
    private var cardsTab: some View {
        CardsView()
            .tabItem {
                VStack {
                    Image("card")
                        .renderingMode(.template)
                    
                    Text(Constants.cardsTabText)
                }
            }
            .tag(3)
    }
    
    private var accountTab: some View {
        AccountView()
            .tabItem {
                VStack {
                    Image("account")
                        .renderingMode(.template)
                    
                    Text(Constants.accountTabText)
                }
            }
            .tag(4)
    }
}

#Preview {
    TabBarView()
}
