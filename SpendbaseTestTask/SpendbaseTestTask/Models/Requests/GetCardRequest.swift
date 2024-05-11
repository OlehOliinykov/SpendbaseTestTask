//
//  GetCardRequest.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 11.05.2024.
//

import Foundation

struct GetCardRequest: RequestDescriptor {
    var path: String
    var method: HTTPMethod
    
    init() {
        path = "/cards"
        method = .get
    }
}
