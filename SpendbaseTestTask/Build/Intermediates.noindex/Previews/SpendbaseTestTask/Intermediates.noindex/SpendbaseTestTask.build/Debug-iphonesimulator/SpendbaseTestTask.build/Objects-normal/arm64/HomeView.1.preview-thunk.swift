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
    @_dynamicReplacement(for: transactionsList) private var __preview__transactionsList: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 145)
        ForEach(viewModel.transactions) { transaction in
            if let card = viewModel.selectCard(for: transaction.tribeCardId) {
                TransactionCell(transaction, with: card)
            }
        }
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: transactionsHeader) private var __preview__transactionsHeader: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 130)
        HStack {
            Text(Constants.transactionsHeaderText)
                .font(.system(size: __designTimeInteger("#10307.[2].[11].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 17), weight: .semibold, design: .default))
            
            Spacer()
            Button {
                
            } label: {
                Text(Constants.seeAllButtonText)
                    .font(.system(size: __designTimeInteger("#10307.[2].[11].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 15), weight: .semibold, design: .default))
            }
        }
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: transactions) private var __preview__transactions: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 122)
        VStack {
            transactionsHeader
            transactionsList
        }
        .modifier(FrameViewModifier())
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: cardsList) private var __preview__cardsList: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 116)
        ForEach(viewModel.cards) { card in
            CardCell(card)
        }
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: cardsHeader) private var __preview__cardsHeader: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 101)
        HStack {
            Text(Constants.cardsHeaderText)
                .font(.system(size: __designTimeInteger("#10307.[2].[8].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 17), weight: .semibold, design: .default))
            
            Spacer()
            Button {
                
            } label: {
                Text(Constants.seeAllButtonText)
                    .font(.system(size: __designTimeInteger("#10307.[2].[8].property.[0].[0].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 15), weight: .semibold, design: .default))
            }
        }
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: cards) private var __preview__cards: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 93)
        VStack {
            cardsHeader
            cardsList
        }
        .modifier(FrameViewModifier())
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: balanceAmount) private var __preview__balanceAmount: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 86)
        Text(viewModel.balance.balance, format: .currency(code: Constants.currencyCode))
            .font(.system(size: __designTimeInteger("#10307.[2].[6].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 28), weight: .bold, design: .default))
            .frame(maxWidth: .infinity, alignment: .leading)
        
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: balanceAccountType) private var __preview__balanceAccountType: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 76)
        HStack {
            Image(Constants.flagImageName)
            Text(Constants.accountTypeText)
                .font(.system(size: __designTimeInteger("#10307.[2].[5].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 15), weight: .semibold, design: .default))
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: balance) private var __preview__balance: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 68)
        VStack {
            balanceAccountType
            balanceAmount
        }
        .modifier(FrameViewModifier())
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: homeComposition) private var __preview__homeComposition: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 38)
        NavigationView {
            ScrollView(.vertical, showsIndicators: __designTimeBoolean("#10307.[2].[3].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: false)) {
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
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/HomeView.swift", line: 34)
        homeComposition
    
#sourceLocation()
    }
}

import enum SpendbaseTestTask.Constants
import struct SpendbaseTestTask.HomeView
#if DEBUG

#Preview {
    HomeView(networkClient: NetworkClient())
}

// Support for back-deployment.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, watchOS 6.0, *)
struct RegistryCompatibilityProvider_line_189: SwiftUI.PreviewProvider {
    static var previews: some SwiftUI.View {
        #if os(iOS)
        let __makePreview: () -> any SwiftUI.View = {
            HomeView(networkClient: NetworkClient())
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


