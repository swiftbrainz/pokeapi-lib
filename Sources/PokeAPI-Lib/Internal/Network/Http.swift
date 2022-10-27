//
//  Http.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

public class Http {
    
    func get(url: URL, parameters: [String: String] = [:], headers: [String: String] = [:]) async -> Result<(Data, URLResponse), Error> {
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = HTTPMethod.get.rawValue
        
        // TODO: Add query params to URL
        
        do {
            let response = try await URLSession.shared.data(for: urlRequest)
            return .success(response)
        } catch let e {
            return .failure(e)
        }
    }
}
