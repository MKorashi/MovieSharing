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
        case defaultImageData = "default"
        case mediumImageData = "medium"
        case highImageData = "high"
        case standardImageData = "standard"
    }
    
    // MARK: - Properties
    
    var defaultImageData: ImageData?
    var mediumImageData: ImageData?
    var highImageData: ImageData?
    var standardImageData: ImageData?
}
