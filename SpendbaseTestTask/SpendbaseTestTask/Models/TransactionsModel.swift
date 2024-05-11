//
//  TransactionsModel.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 10.05.2024.
//

import Foundation
import SwiftUI

enum TransactionType: String, Decodable {
    case income
    case expense
    case refund
}

struct TransactionsModel: Decodable, Identifiable {
    let id: String
    let tribeTransactionId: String
    let tribeCardId: Int
    let amount: String
    let status: String
    let tribeTransactionType: TransactionType
    let schemeId: String
    let merchantName: String
    let pan: String
    
    var dependOnStatusAmount: Double? {
        switch tribeTransactionType {
        case .income:
            guard let amount = Double(amount) else { return nil }
            
            return amount
        case .expense, .refund:
            guard let amount = Double(amount) else { return nil }
            let minusAmount = -amount
            
            return minusAmount
        }
    }
    var transactionColor: Color {
        switch tribeTransactionType {
        case .income:
            return .green
        case .expense:
            return .secondary
        case .refund:
            return .black
        }
    }
    
    var imageName: String {
        switch tribeTransactionType {
        case .income:
            let imageName: String = "leadingBottomArrow"
            
            return imageName
        case .expense, .refund:
            let imageName: String = "mauveCard"
            
            return imageName
        }
    }
}


extension TransactionsModel {
    static let mockDataRefund: TransactionsModel = TransactionsModel(id: "001",
                                                               tribeTransactionId: "001",
                                                               tribeCardId: 2,
                                                               amount: "100",
                                                               status: "string",
                                                               tribeTransactionType: .refund,
                                                               schemeId: "string",
                                                               merchantName: "string",
                                                               pan: "string")
    static let mockDataExpense: TransactionsModel = TransactionsModel(id: "001",
                                                               tribeTransactionId: "001",
                                                               tribeCardId: 2,
                                                               amount: "100",
                                                               status: "string",
                                                               tribeTransactionType: .expense,
                                                               schemeId: "string",
                                                               merchantName: "string",
                                                               pan: "string")
}

