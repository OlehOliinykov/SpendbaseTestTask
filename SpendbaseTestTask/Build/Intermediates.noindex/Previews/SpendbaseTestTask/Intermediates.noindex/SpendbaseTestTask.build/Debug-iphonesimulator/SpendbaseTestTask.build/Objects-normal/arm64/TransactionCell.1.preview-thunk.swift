@_private(sourceFile: "TransactionCell.swift") import SpendbaseTestTask
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TransactionCell {
    @_dynamicReplacement(for: refundImage) @ViewBuilder private var __preview__refundImage: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/TransactionCell.swift", line: 89)
        if transaction.tribeTransactionType == .refund {
            Image(__designTimeString("#33829.[1].[9].property.[0].[0].[0].[0].arg[0].value", fallback: "receiptNotAdded"))
        } else {
            Circle()
                .fill(.white)
                .frame(width: __designTimeInteger("#33829.[1].[9].property.[0].[0].[1].[0].modifier[1].arg[0].value", fallback: 20), height: __designTimeInteger("#33829.[1].[9].property.[0].[0].[1].[0].modifier[1].arg[1].value", fallback: 20))
        }
    
#sourceLocation()
    }
}

extension TransactionCell {
    @_dynamicReplacement(for: badge) @ViewBuilder private var __preview__badge: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/TransactionCell.swift", line: 80)
        if transaction.tribeTransactionType == .expense {
            Circle()
                .fill(.red)
                .frame(width: __designTimeInteger("#33829.[1].[8].property.[0].[0].[0].[0].modifier[1].arg[0].value", fallback: 12), height: __designTimeInteger("#33829.[1].[8].property.[0].[0].[0].[0].modifier[1].arg[1].value", fallback: 12))
        }
    
#sourceLocation()
    }
}

extension TransactionCell {
    @_dynamicReplacement(for: transactionAmount) @ViewBuilder private var __preview__transactionAmount: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/TransactionCell.swift", line: 68)
        HStack {
            if let amount = transaction.dependOnStatusAmount {
                Text(amount, format: .currency(code: __designTimeString("#33829.[1].[7].property.[0].[0].arg[0].value.[0].[0].[0].arg[1].value.arg[0].value", fallback: "EUR")))
                    .font(.system(size: __designTimeInteger("#33829.[1].[7].property.[0].[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 16), weight: .semibold, design: .default))
                    .foregroundStyle(transaction.transactionColor)
                refundImage
            }
        }
    
#sourceLocation()
    }
}

extension TransactionCell {
    @_dynamicReplacement(for: cardInformation) @ViewBuilder private var __preview__cardInformation: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/TransactionCell.swift", line: 50)
        if transaction.tribeTransactionType == .refund ||
            transaction.tribeTransactionType == .expense {
            VStack {
                Text(card.cardName)
                HStack {
                    Text(card.cardLast4CellFormatted)
                        .foregroundStyle(.secondary)
                }
            }
            .font(.system(size: __designTimeInteger("#33829.[1].[6].property.[0].[0].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 15), weight: .medium, design: .default))
        } else {
            Text(__designTimeString("#33829.[1].[6].property.[0].[0].[1].[0].arg[0].value", fallback: "Load"))
                .font(.system(size: __designTimeInteger("#33829.[1].[6].property.[0].[0].[1].[0].modifier[0].arg[0].value.arg[0].value", fallback: 15), weight: .semibold, design: .default))
        }
    
#sourceLocation()
    }
}

extension TransactionCell {
    @_dynamicReplacement(for: circle) private var __preview__circle: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/TransactionCell.swift", line: 36)
        ZStack {
            Circle()
                .fill(.backgroundGray)
                .frame(width: __designTimeInteger("#33829.[1].[5].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 40), height: __designTimeInteger("#33829.[1].[5].property.[0].[0].arg[0].value.[0].modifier[1].arg[1].value", fallback: 40))
            
            Image(transaction.imageName)
            
            badge
                .frame(width: __designTimeInteger("#33829.[1].[5].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 40), height: __designTimeInteger("#33829.[1].[5].property.[0].[0].arg[0].value.[2].modifier[0].arg[1].value", fallback: 40), alignment: .bottomTrailing)
        }
    
#sourceLocation()
    }
}

extension TransactionCell {
    @_dynamicReplacement(for: cellComposition) private var __preview__cellComposition: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/TransactionCell.swift", line: 24)
        HStack {
            circle
                            
            cardInformation
            
            Spacer()
            
            transactionAmount
        }
    
#sourceLocation()
    }
}

extension TransactionCell {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Cells/TransactionCell.swift", line: 20)
        cellComposition
    
#sourceLocation()
    }
}

import struct SpendbaseTestTask.TransactionCell
#Preview {
    TransactionCell(TransactionsModel.mockDataExpense, with: CardModel.mockData)
}

// Support for back-deployment.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, watchOS 6.0, *)
struct RegistryCompatibilityProvider_line_122: SwiftUI.PreviewProvider {
    static var previews: some SwiftUI.View {
        #if os(iOS)
        let __makePreview: () -> any SwiftUI.View = {
            TransactionCell(TransactionsModel.mockDataExpense, with: CardModel.mockData)
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




