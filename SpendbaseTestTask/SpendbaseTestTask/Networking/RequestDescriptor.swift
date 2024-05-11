//
//  RequestDescriptor.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 11.05.2024.
//

import Foundation

protocol RequestDescriptor {
    var path: String { get }
    var method: HTTPMethod { get }
}
