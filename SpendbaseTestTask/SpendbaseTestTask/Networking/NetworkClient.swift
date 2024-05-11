//
//  NetworkClient.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 10.05.2024.
//

import Foundation
import Combine

private enum Constants {
    static let httpMethod: String = "GET"
    
    static let queryName: String = "teamId"
    static let queryKey: String = "001"
    
    static let balanceJSONFileName: String = "MockBalance"
    static let cardsJSONFileName: String = "MockCards"
    static let transactionsJSONFileName: String = "MockTransactions"
    
    static let defaultFileType: String = "json"
}

private enum URLStrings {
    static let baseURLString = "https://www.example.com"
}

enum MockType {
    case balance
    case cards
    case transactions
}

enum NetworkError: Error {
    case urlCreation
    case pathCreation
    case mockResponseError
}

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

final class NetworkClient {
    private let urlSession: URLSession
    private let baseURL: URL
    
    private lazy var jsonDecoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .useDefaultKeys // Select your key decoding strategy
        return jsonDecoder
    }()

    init() {
        baseURL = URL(string: URLStrings.baseURLString)!
        let sessionConfiguration = URLSessionConfiguration.default
        sessionConfiguration.protocolClasses = [MockURLProtocol.self]
        urlSession = URLSession(configuration: sessionConfiguration)
    }
    
    func request<RequestType: Decodable>(descriptor: RequestDescriptor, with type: RequestType.Type) async throws -> AnyPublisher<RequestType, Error> {
        let request = makeRequest(path: descriptor.path, method: descriptor.method)
        let mockResult = makeMockResult(for: request)
        
        guard let mockResponse = mockResult.response,
              let mockData = mockResult.data else { throw NetworkError.mockResponseError}
        
        MockURLProtocol.mockResponses[request] = (mockResponse, mockData)
                
        return urlSession.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: RequestType.self, decoder: jsonDecoder)
            .eraseToAnyPublisher()
    }
    
    private func makeRequest(path: String, method: HTTPMethod) -> URLRequest {
        let urlString = baseURL.absoluteString + path
        
        var request = URLRequest(url: URL(string: urlString)!)
        
        request.httpMethod = method.rawValue
        
        return request
    }
        
    private func makeMockResult(for request: URLRequest) -> (response: HTTPURLResponse?, data: Data?) {
        let fileName = "\(request.httpMethod!)\(request.url!.path)".replacingOccurrences(of: "/", with: "_").replacingOccurrences(of: ".json", with: "")
        
        var data: Data?
        
        if let filepath = Bundle.main.path(forResource: fileName, ofType: "json") {
            data = try? Data(contentsOf: URL(fileURLWithPath: filepath))
        }
        
        let response = HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: nil, headerFields: request.allHTTPHeaderFields)
        
        return (response, data)
    }
}
