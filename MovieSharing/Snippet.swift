//
//  Snippet.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

struct Snippet: Decodable {
    
    var publishedAt: String
    var title: String
    var description: String
    var thumbnail: Thumbnail
}

