//
//  Video.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 28.09.21.
//

import Foundation

struct Video: Decodable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case videoId = "id"
        case snippet
    }
    
    // MARK: - Properties
    
    var videoId: String?
    var snippet: Snippet?
}
