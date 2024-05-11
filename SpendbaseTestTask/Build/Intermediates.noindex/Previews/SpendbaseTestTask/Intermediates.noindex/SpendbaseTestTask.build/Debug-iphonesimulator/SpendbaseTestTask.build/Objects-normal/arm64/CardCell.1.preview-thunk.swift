@_private(sourceFile: "CardCell.swift") import SpendbaseTestTask
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CardCell {
    @_dynamicReplacement(for: cardName) private var __preview__cardName: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/CardCell.swift", line: 45)
        Text(card.cardName)
            .font(.system(size: __designTimeInteger("#34076.[1].[5].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 15), weight: .semibold, design: .default))
    
#sourceLocation()
    }
}

extension CardCell {
    @_dynamicReplacement(for: cardMiniature) private var __preview__cardMiniature: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/CardCell.swift", line: 32)
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
            RoundedRectangle(cornerRadius: __designTimeInteger("#34076.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: 4))
                .fill(.darkMauve)
                .frame(width: __designTimeInteger("#34076.[1].[4].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 48),  height: __designTimeInteger("#34076.[1].[4].property.[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 32))
            
            Text(card.cardLast4)
                .foregroundStyle(.white)
                .padding(__designTimeInteger("#34076.[1].[4].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 4))
                .font(.system(size: __designTimeInteger("#34076.[1].[4].property.[0].[0].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value", fallback: 10), weight: .semibold, design: .default))
        }
    
#sourceLocation()
    }
}

extension CardCell {
    @_dynamicReplacement(for: cellComposition) private var __preview__cellComposition: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/CardCell.swift", line: 22)
        HStack {
            cardMiniature
            
            cardName
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity, alignment: .leading)
    
#sourceLocation()
    }
}

extension CardCell {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/CardCell.swift", line: 18)
        cellComposition
    
#sourceLocation()
    }
}

import struct SpendbaseTestTask.CardCell
#Preview {
    CardCell(CardModel.mockData)
}

// Support for back-deployment.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, watchOS 6.0, *)
struct RegistryCompatibilityProvider_line_64: SwiftUI.PreviewProvider {
    static var previews: some SwiftUI.View {
        #if os(iOS)
        let __makePreview: () -> any SwiftUI.View = {
            CardCell(CardModel.mockData)
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




