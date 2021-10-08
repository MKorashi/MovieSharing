//
//  VideoResponse.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

struct VideoContainer: Decodable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case videos = "items"
    }
    
    // MARK: - Properties
    
    var videos: [Video]?
}
