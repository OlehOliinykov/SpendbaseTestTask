//
//  CardAndBalanceRepository.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 11.05.2024.
//

import Foundation
import Combine

final class CardAndBalanceRepository: ObservableObject {
    private let networkClient: NetworkClient
    
    @Published var balance: BalanceModel = BalanceModel(balance: .zero)
    @Published var cards: [CardModel] = [CardModel]()
    @Published var transactions: [TransactionsModel] = [TransactionsModel]()
    @Published var errorMessage: String = String()
    
    private var cancellables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    init(networkClient: NetworkClient) {
        self.networkClient = networkClient
                
        Task {
            await getBalance()
            await getCards()
            await getTransactions()
        }
    }
    
    private func getBalance() async {
        let getBalanceRequest = GetBalanceRequest()
        
        do {
            try await networkClient.request(descriptor: getBalanceRequest, with: BalanceModel.self)
                .receive(on: DispatchQueue.global(qos: .background))
                .sink { [weak self] completion in
                    self?.handle(completion)
                } receiveValue: { [weak self] balance in
                    self?.balance = balance
                }
                .store(in: &cancellables)
        } catch(let error) {
            handle(error)
        }
    }
    
    private func getCards() async {
        let getCardRequest = GetCardRequest()
        do {
            try await networkClient.request(descriptor: getCardRequest, with: CardsModel.self)
                .receive(on: DispatchQueue.global(qos: .background))
                .sink { [weak self] completion in
                    self?.handle(completion)
                } receiveValue: { [weak self] cards in
                    self?.cards = cards.cards
                }
                .store(in: &cancellables)
        } catch(let error) {
            handle(error)
        }
    }
    
    private func getTransactions() async {
        let getTransactionsRequest = GetTransactionsRequest()
        do {
            try await networkClient.request(descriptor: getTransactionsRequest, with: [TransactionsModel].self)
                .receive(on: DispatchQueue.global(qos: .background))
                .sink { [weak self] completion in
                    self?.handle(completion)
                } receiveValue: { [weak self] transactions in
                    self?.transactions = transactions
                }
                .store(in: &cancellables)
        } catch(let error) {
            handle(error)
        }
    }
    
    private func handle(_ completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            errorMessage = error.localizedDescription
        }
    }
    
    private func handle(_ error: Error) {
        errorMessage = error.localizedDescription
    }
}
