//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Dishant Nagpal on 20/08/24.
//

import Foundation


final class RMRequest {
    
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
        
    }
    
    let endPoint: RMEndpoint
    
    let pathComponents: [String]
    
    let queryParameters: [URLQueryItem]

    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach( {
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
        
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    
    public init(endPoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
