@_private(sourceFile: "TransferSheetView.swift") import SpendbaseTestTask
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TransferSheetView {
    @_dynamicReplacement(for: continueButton) private var __preview__continueButton: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Sheets/Views/TransferSheetView.swift", line: 77)
        Button {
            dissmis()
        } label: {
            Text(__designTimeString("#55159.[2].[7].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "Continue"))
                .font(.system(size: __designTimeInteger("#55159.[2].[7].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 16), weight: .semibold, design: .default))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(!viewModel.isEnabledContinueButton() ? __designTimeFloat("#55159.[2].[7].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value.then", fallback: 0.5) : __designTimeInteger("#55159.[2].[7].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value.else", fallback: 1)))
                .cornerRadius(__designTimeInteger("#55159.[2].[7].property.[0].[0].arg[1].value.[0].modifier[5].arg[0].value", fallback: 32))
                .padding()
        }
        .disabled(!viewModel.isEnabledContinueButton())
        .buttonStyle(PressEffectButtonStyle())
    
#sourceLocation()
    }
}

extension TransferSheetView {
    @_dynamicReplacement(for: amountMessage) private var __preview__amountMessage: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Sheets/Views/TransferSheetView.swift", line: 64)
        VStack {
            HStack {
                Text(__designTimeString("#55159.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "You only have"))
                Text(viewModel.balance.balance, format: .currency(code: __designTimeString("#55159.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.arg[0].value", fallback: "EUR")))
            }
            
            Text(__designTimeString("#55159.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "available in your balance"))
        }
        .font(.system(size: __designTimeInteger("#55159.[2].[6].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 13), weight: .medium, design: .default))
        .foregroundColor(viewModel.isWithdrawals() ? .black : .red)
    
#sourceLocation()
    }
}

extension TransferSheetView {
    @_dynamicReplacement(for: amountTextField) private var __preview__amountTextField: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Sheets/Views/TransferSheetView.swift", line: 57)
        TextField(__designTimeString("#55159.[2].[5].property.[0].[0].arg[0].value", fallback: ""), value: $viewModel.inputAmount, format: .currency(code: __designTimeString("#55159.[2].[5].property.[0].[0].arg[2].value.arg[0].value", fallback: "EUR")))
            .font(.system(size: __designTimeInteger("#55159.[2].[5].property.[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 34), weight: .bold, design: .default))
            .keyboardType(.numbersAndPunctuation)
            .multilineTextAlignment(.center)
    
#sourceLocation()
    }
}

extension TransferSheetView {
    @_dynamicReplacement(for: sheetComposition) private var __preview__sheetComposition: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Sheets/Views/TransferSheetView.swift", line: 30)
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
                    Image(__designTimeString("#55159.[2].[4].property.[0].[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "cancel"))
                }
            }
        }
        .onDisappear {
            viewModel.clearInputFields()
        }
        .navigationTitle(Constants.navigationTitle)
        .navigationBarTitleDisplayMode(.inline)
    
#sourceLocation()
    }
}

extension TransferSheetView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/olehcartelll/Documents/petProjects/SpendbaseTestTask/SpendbaseTestTask/SpendbaseTestTask/Flows/Home/Views/Sheets/Views/TransferSheetView.swift", line: 24)
        NavigationView {
            sheetComposition
        }
    
#sourceLocation()
    }
}

import enum SpendbaseTestTask.Constants
import struct SpendbaseTestTask.TransferSheetView
#if DEBUG

#Preview {
    NavigationView {
        TransferSheetView(HomeViewModel(networkClient: NetworkClient()))
    }
}

// Support for back-deployment.
@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, watchOS 6.0, *)
struct RegistryCompatibilityProvider_line_110: SwiftUI.PreviewProvider {
    static var previews: some SwiftUI.View {
        #if os(iOS)
        let __makePreview: () -> any SwiftUI.View = {
            NavigationView {
                TransferSheetView(HomeViewModel(networkClient: NetworkClient()))
            }
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


