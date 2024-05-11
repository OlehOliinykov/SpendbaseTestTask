//
//  TransferSheetView.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 09.05.2024.
//

import SwiftUI

private enum Constants {
    static let navigationTitle: String = "Transfer"
}

struct TransferSheetView: View {
    @Environment(\.dismiss) var dissmis
    
    @ObservedObject var viewModel: HomeViewModel
    
    init(_ viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            sheetComposition
        }
    }
    
    private var sheetComposition: some View {
        VStack {
            Spacer()
            amountTextField
            
            amountMessage
            
            Spacer()
            
            continueButton
        }
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button {
                    dissmis()
                } label: {
                    Image("cancel")
                }
            }
        }
        .onDisappear {
            viewModel.clearInputFields()
        }
        .navigationTitle(Constants.navigationTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private var amountTextField: some View {
        TextField(String(), value: $viewModel.inputAmount, format: .currency(code: "EUR"))
            .font(.system(size: 34, weight: .bold, design: .default))
            .keyboardType(.numbersAndPunctuation)
            .multilineTextAlignment(.center)
    }
    
    private var amountMessage: some View {
        VStack {
            HStack {
                Text("You only have")
                Text(viewModel.balance.balance, format: .currency(code: "EUR"))
            }
            
            Text("available in your balance")
        }
        .font(.system(size: 13, weight: .medium, design: .default))
        .foregroundColor(viewModel.isWithdrawals() ? .black : .red)
    }
    
    private var continueButton: some View {
        Button {
            dissmis()
        } label: {
            Text("Continue")
                .font(.system(size: 16, weight: .semibold, design: .default))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(!viewModel.isEnabledContinueButton() ? 0.5 : 1))
                .cornerRadius(32)
                .padding()
        }
        .disabled(!viewModel.isEnabledContinueButton())
        .buttonStyle(PressEffectButtonStyle())
    }
}

#if DEBUG
#Preview {
    NavigationView {
        TransferSheetView(HomeViewModel(networkClient: NetworkClient()))
    }
}
#endif
