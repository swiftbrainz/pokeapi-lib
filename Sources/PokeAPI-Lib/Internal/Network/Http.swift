//
//  Http.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

class Http {
    
    func get(url: URL,
             parameters: [String: String] = [:],
             headers: [String: String] = [:],
             completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = HTTPMethod.get.rawValue
        
        // TODO: Add query params to URL
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: completion)
        task.resume()
    }
}
