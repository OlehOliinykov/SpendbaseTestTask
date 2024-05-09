//
//  ContentView.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 09.05.2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel: HomeViewModel
    
    init() {
        self._viewModel = StateObject(wrappedValue: HomeViewModel())
    }
    
    var body: some View {
        homeComposition
    }
    
    private var homeComposition: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Home")
                }
                .padding()
            }
            .navigationTitle("Money")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        viewModel.showTransferSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $viewModel.showTransferSheet) {
                TransferSheetView()
            }
        }
    }
}

#if DEBUG
#Preview {
    HomeView()
}
#endif
