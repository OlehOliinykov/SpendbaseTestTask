//
//  GetTransactionsRequest.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 11.05.2024.
//

import Foundation

struct GetTransactionsRequest: RequestDescriptor {
    var path: String
    var method: HTTPMethod
    
    init() {
        path = "/cards/transactions"
        method = .get
    }
}
