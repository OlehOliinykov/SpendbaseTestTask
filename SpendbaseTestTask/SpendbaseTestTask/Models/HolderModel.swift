//
//  HolderModel.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 10.05.2024.
//

import Foundation

struct HolderModel: Decodable {
    let id: String
    let fullName: String
    let email: String
    let logoUrl: String?
}
