//
//  PaginatedResult.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

public struct PaginatedResult<T: Decodable>: Decodable {
    
    public var count: Int
    public var next: String?
    public var previous: String?
    public var results: [T]
    
    init(count: Int = 0, next: String? = nil, previous: String? = nil, results: [T] = []) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }
    
    public static var emptyPage: PaginatedResult<T> {
        var paginatedResult = PaginatedResult<T>()
        paginatedResult.count = 0
        paginatedResult.results = []
        return paginatedResult
    }
}
