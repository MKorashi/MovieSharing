//
//  Thumbnail.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

struct ThumbnailContainer: Decodable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case defaultResolutionImage = "default"
        case mediumResolutionImage = "medium"
        case highResolutionImage = "high"
        case standardResolutionImage = "standard"
    }
    
    // MARK: - Properties
    
    var defaultResolutionImage: ImageData?
    var mediumResolutionImage: ImageData?
    var highResolutionImage: ImageData?
    var standardResolutionImage: ImageData?
}
