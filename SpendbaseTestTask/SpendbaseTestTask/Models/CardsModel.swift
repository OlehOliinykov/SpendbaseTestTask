//
//  CardsModel.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 10.05.2024.
//

import Foundation

struct CardsModel: Decodable {
    let cards: [CardModel]
}

struct CardModel: Decodable, Identifiable {
    let id: String
    let cardLast4: String
    let cardName: String
    let isLocked: Bool
    let isTerminated: Bool
    let spent: Double
    let limit: Double
    let limitType: String
    let cardHolder: HolderModel
    let fundingSource: String
    let issuedAt: String
    
    var cardLast4CellFormatted: String {
        let cardLast4: String = "•• \(cardLast4)"
        
        return cardLast4
    }
}
