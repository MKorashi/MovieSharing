//
//  ImageObject.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

struct ImageObject: Decodable {
    
    // MARK: - Types
    
    enum CodingKeys: String, CodingKey {
        case imageUrl = "url"
        case imageWidth = "width"
        case imageHeight = "height"
    }
    
    // MARK: - Properties
    
    var imageUrl: String?
    var imageWidth: Double?
    var imageHeight: Double?
}
