//
//  HomeViewModel.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 09.05.2024.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    @Published var showTransferSheet: Bool = false
    @Published var showAlert: Bool = false
    @Published var alertMessage: String = String()
    
    @Published var inputAmount: Double = Double()
    
    @Published var balance: BalanceModel = BalanceModel(balance: .zero)
    @Published var cards: [CardModel] = [CardModel]()
    @Published var transactions: [TransactionsModel] = [TransactionsModel]()
    
    @Published private var repository: CardAndBalanceRepository
    
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    init(networkClient: NetworkClient) {
        repository = CardAndBalanceRepository(networkClient: networkClient)
    }
    
    func subscribeChannels() {
        subscribeBalanceChannel()
        subscribeCardsChannel()
        subscribeTransactionsChannel()
        subscribeAlertChannel()
    }
    
    private func subscribeBalanceChannel() {
        repository.$balance
            .receive(on: DispatchQueue.main)
            .sink { balance in
                self.balance = balance
            }
            .store(in: &cancellables)
    }
    
    private func subscribeCardsChannel() {
        repository.$cards
            .receive(on: DispatchQueue.main)
            .sink { [weak self] cards in
                self?.cards = cards
            }
            .store(in: &cancellables)
    }
    
    private func subscribeTransactionsChannel() {
        repository.$transactions
            .receive(on: DispatchQueue.main)
            .sink { [weak self] transactions in
                self?.transactions = transactions
            }
            .store(in: &cancellables)
    }
    
    private func subscribeAlertChannel() {
        repository.$errorMessage
            .receive(on: DispatchQueue.main)
            .sink { [weak self] error in
                self?.alertMessage = error
                self?.showAlert = true
            }
            .store(in: &cancellables)
    }
    
    func isWithdrawals() -> Bool{
        if inputAmount > balance.balance || balance.balance.isZero {
            return false
        } else {
            return true
        }
    }
    
    func isEnabledContinueButton() -> Bool {
        if inputAmount > balance.balance || inputAmount.isZero || balance.balance.isZero {
            return false
        } else {
            return true
        }
    }
    
    func selectCard(for cellIndex: Int) -> CardModel? {
        guard !cards.isEmpty else { return nil }
        
        let card = cards[cellIndex]
        
        return card
    }
    
    func clearInputFields() {
        inputAmount = Double()
    }
}
