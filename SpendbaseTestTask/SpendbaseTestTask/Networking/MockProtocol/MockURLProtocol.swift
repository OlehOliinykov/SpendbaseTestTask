//
//  MockURLProtocol.swift
//  SpendbaseTestTask
//
//  Created by Oleh Oliinykov on 10.05.2024.
//

import Foundation

final class MockURLProtocol: URLProtocol {
    static var mockResponses: [URLRequest: (HTTPURLResponse, Data)] = [:]

    override class func canInit(with request: URLRequest) -> Bool {
        true
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        request
    }

    override func startLoading() {
        guard let (response, data) = MockURLProtocol.mockResponses[request] else {
            client?.urlProtocol(self, didFailWithError: NSError(domain: "MockURLProtocol", code: 404, userInfo: nil))
            return
        }

        client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
        client?.urlProtocol(self, didLoad: data)
        client?.urlProtocolDidFinishLoading(self)
    }
    
    override func stopLoading() { }
}
