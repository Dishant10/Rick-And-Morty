//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Dishant Nagpal on 20/08/24.
//

import Foundation


struct RMLocation: Codable {
    
          let id: Int
          let name: String
          let type: String
          let dimension: String
          let residents:[String]
          let url: String
          let created: String
        
}

