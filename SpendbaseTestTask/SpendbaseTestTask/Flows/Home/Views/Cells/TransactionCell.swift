//
//  TransactionCell.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 11.05.2024.
//

import SwiftUI

struct TransactionCell: View {
    private let transaction: TransactionsModel
    private let card: CardModel
    
    init(_ transaction: TransactionsModel, with card: CardModel) {
        self.transaction = transaction
        self.card = card
    }
    
    var body: some View {
        cellComposition
    }
    
    private var cellComposition: some View {
        HStack {
            circle
                            
            cardInformation
            
            Spacer()
            
            transactionAmount
        }
    }
    
    private var circle: some View {
        ZStack {
            Circle()
                .fill(.backgroundGray)
                .frame(width: 40, height: 40)
            
            Image(transaction.imageName)
            
            badge
                .frame(width: 40, height: 40, alignment: .bottomTrailing)
        }
    }
    
    @ViewBuilder
    private var cardInformation: some View {
        if transaction.tribeTransactionType == .refund ||
            transaction.tribeTransactionType == .expense {
            VStack {
                Text(card.cardName)
                HStack {
                    Text(card.cardLast4CellFormatted)
                        .foregroundStyle(.secondary)
                }
            }
            .font(.system(size: 15, weight: .medium, design: .default))
        } else {
            Text("Load")
                .font(.system(size: 15, weight: .semibold, design: .default))
        }
    }
    
    @ViewBuilder
    private var transactionAmount: some View {
        HStack {
            if let amount = transaction.dependOnStatusAmount {
                Text(amount, format: .currency(code: "EUR"))
                    .font(.system(size: 16, weight: .semibold, design: .default))
                    .foregroundStyle(transaction.transactionColor)
                refundImage
            }
        }
    }
    
    @ViewBuilder
    private var badge: some View {
        if transaction.tribeTransactionType == .expense {
            Circle()
                .fill(.red)
                .frame(width: 12, height: 12)
        }
    }
    
    @ViewBuilder
    private var refundImage: some View {
        if transaction.tribeTransactionType == .refund {
            Image("receiptNotAdded")
        } else {
            Circle()
                .fill(.white)
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    TransactionCell(TransactionsModel.mockDataExpense, with: CardModel.mockData)
}
