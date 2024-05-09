//
//  TabBarView.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 09.05.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            TransactionsView()
                .tabItem {
                    Label("Transactions", systemImage: "list.dash")
                }
            
            CardsView()
                .tabItem {
                    Label("My Cards", systemImage: "creditcard")
                }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }
    }
}

#Preview {
    TabBarView()
}
