//
//  Thumbnail.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

struct Thumbnail: Decodable {
    
    // MARK: - Properties
    
    var defaultImage: ImageObject
    var mediumImage: ImageObject
    var highImage: ImageObject
    var standardImage: ImageObject    
}
