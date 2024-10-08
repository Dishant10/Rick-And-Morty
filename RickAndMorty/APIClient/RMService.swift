//
//  RMService.swift
//  RickAndMorty
//
//  Created by Dishant Nagpal on 20/08/24.
//

import Foundation


/// Primary API service object to get Ricky and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    private init(){
        
    }
    
    public func execute<T:Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T,Error>)->Void) {
        
    }
}
