//
//  TransactionsModel.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 10.05.2024.
//

import Foundation

struct TransactionsModel: Decodable, Identifiable {
    let id: String
    let tribeTransactionId: String
    let tribeCardId: Int
    let amount: String
    let status: String
    let tribeTransactionType: String
    let schemeId: String
    let merchantName: String
    let pan: String
}
