//
//  AccountView.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 09.05.2024.
//

import SwiftUI

private enum Constants {
    static let navigationTitle: String = "Account"
}

struct AccountView: View {
    var body: some View {
        placeholderCompostion
    }
    
    private var placeholderCompostion: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView(.vertical, showsIndicators: false) {
                    placeholderMessage
                        .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                }                
            }
            .background(.backgroundGray)
            .navigationTitle(Constants.navigationTitle)
        }
    }
    
    private var placeholderMessage: some View {
        Image("placeholder")
    }
}

#if DEBUG
#Preview {
    AccountView()
}
#endif
