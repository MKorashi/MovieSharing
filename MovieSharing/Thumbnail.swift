//
//  Thumbnail.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

struct Thumbnail: Decodable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case defaultImage = "default"
        case mediumImage = "medium"
        case highImage = "high"
        case standardImage = "standard"
    }
    
    // MARK: - Properties
    
    var defaultImage: ImageObject
    var mediumImage: ImageObject?
    var highImage: ImageObject?
    var standardImage: ImageObject?
}
