//
//  Video.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 28.09.21.
//

import Foundation


struct Video:Decodable {
    
    var id: String
    var snippet:Snippet
    
}


struct Snippet:Decodable {
    
    var publishedAt: String
    var title:String
        var description: String
        var Thumbnails: Thumbnail
    
}

struct Thumbnail:Decodable {
    
    var default_image: ImageObject,
    var medium_imagee:ImageObject
    var high_image:ImageObject
    var standard_image: ImageObject
    
}

struct ImageObject:Decodable {
    
    var url: String
    var width:Double
    var height: Double
    
}
