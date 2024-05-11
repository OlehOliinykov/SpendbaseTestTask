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
    
    @Published var balance: BalanceModel?
    @Published var cards: [CardModel] = [CardModel]()
    @Published var transactions: [TransactionsModel] = [TransactionsModel]()
    
    @Published private var repository: CardAndBalanceRepository
    
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    init(networkClient: NetworkClient) {
        repository = CardAndBalanceRepository(networkClient: networkClient)
    }
    
    func subscribeBalanceChannel() {
        repository.$balance
            .receive(on: DispatchQueue.main)
            .sink { balance in
                self.balance = balance
            }
            .store(in: &cancellables)
    }
    
    
    func subscribeCardsChannel() {
        repository.$cards
            .receive(on: DispatchQueue.main)
            .sink { [weak self] cards in
                self?.cards = cards
            }
            .store(in: &cancellables)
    }
    
    func subscribeTransactionsChannel() {
        repository.$transactions
            .receive(on: DispatchQueue.main)
            .sink { [weak self] transactions in
                self?.transactions = transactions
            }
            .store(in: &cancellables)
    }
    
    func subscribeAlertChannel() {
        repository.$errorMessage
            .receive(on: DispatchQueue.main)
            .sink { [weak self] error in
                self?.alertMessage = error
                self?.showAlert = true
            }
            .store(in: &cancellables)
    }
}
