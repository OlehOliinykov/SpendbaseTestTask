//
//  CardCell.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 11.05.2024.
//

import SwiftUI

struct CardCell: View {
    private let card: CardModel
    
    init(_ card: CardModel) {
        self.card = card
    }
    
    var body: some View {
        cellComposition
    }
    
    private var cellComposition: some View {
        HStack {
            cardMiniature
            
            cardName
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var cardMiniature: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
            RoundedRectangle(cornerRadius: 4)
                .fill(.darkMauve)
                .frame(width: 48,  height: 32)
            
            Text(card.cardLast4)
                .foregroundStyle(.white)
                .padding(4)
                .font(.system(size: 10, weight: .semibold, design: .default))
        }
    }
    
    private var cardName: some View {
        Text(card.cardName)
            .font(.system(size: 15, weight: .semibold, design: .default))
    }
}

#Preview {
    CardCell(CardModel.mockData)
}
