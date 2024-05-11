//
//  ContentView.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 09.05.2024.
//

import SwiftUI

private enum Constants {
    static let navigationTitle: String = "Money"
    
    static let flagImageName: String = "euroFlag"
    static let accountTypeText: String = "EUR account"
    static let currencyCode: String = "EUR"
    
    static let cardsHeaderText: String = "My cards"
    
    static let seeAllButtonText: String = "See all"
    
    static let transactionsHeaderText: String = "Recent transactions"
        
    static let toolbarAddImageName: String = "plus"
}

struct HomeView: View {
    @StateObject private var viewModel: HomeViewModel
    
    init(networkClient: NetworkClient) {
        _viewModel = StateObject(wrappedValue: HomeViewModel(networkClient: NetworkClient()))
    }
    
    var body: some View {
        homeComposition
    }
    
    private var homeComposition: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                balance
                cards
                transactions
            }
            .background(.backgroundGray)
            .onAppear {
                viewModel.subscribeChannels()
            }
            .navigationTitle(Constants.navigationTitle)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        viewModel.showTransferSheet.toggle()
                    } label: {
                        Image(systemName: Constants.toolbarAddImageName)
                    }
                }
            }
            .refreshable {
                viewModel.subscribeChannels()
            }
            .sheet(isPresented: $viewModel.showTransferSheet) {
                TransferSheetView(viewModel)
            }
        }
    }
    
    private var balance: some View {
        VStack {
            balanceAccountType
            balanceAmount
        }
        .modifier(FrameViewModifier())
    }
    
    private var balanceAccountType: some View {
        HStack {
            Image(Constants.flagImageName)
            Text(Constants.accountTypeText)
                .font(.system(size: 15, weight: .semibold, design: .default))
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var balanceAmount: some View {
        Text(viewModel.balance.balance, format: .currency(code: Constants.currencyCode))
            .font(.system(size: 28, weight: .bold, design: .default))
            .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    private var cards: some View {
        VStack {
            cardsHeader
            cardsList
        }
        .modifier(FrameViewModifier())
    }
    
    private var cardsHeader: some View {
        HStack {
            Text(Constants.cardsHeaderText)
                .font(.system(size: 17, weight: .semibold, design: .default))
            
            Spacer()
            Button {
                
            } label: {
                Text(Constants.seeAllButtonText)
                    .font(.system(size: 15, weight: .semibold, design: .default))
            }
        }
    }
    
    private var cardsList: some View {
        ForEach(viewModel.cards) { card in
            CardCell(card)
        }
    }
    
    private var transactions: some View {
        VStack {
            transactionsHeader
            transactionsList
        }
        .modifier(FrameViewModifier())
    }
    
    private var transactionsHeader: some View {
        HStack {
            Text(Constants.transactionsHeaderText)
                .font(.system(size: 17, weight: .semibold, design: .default))
            
            Spacer()
            Button {
                
            } label: {
                Text(Constants.seeAllButtonText)
                    .font(.system(size: 15, weight: .semibold, design: .default))
            }
        }
    }
    
    private var transactionsList: some View {
        ForEach(viewModel.transactions) { transaction in
            if let card = viewModel.selectCard(for: transaction.tribeCardId) {
                TransactionCell(transaction, with: card)
            }
        }
    }
}

#if DEBUG
#Preview {
    HomeView(networkClient: NetworkClient())
}
#endif
