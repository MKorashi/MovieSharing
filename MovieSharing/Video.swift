//
//  Video.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 28.09.21.
//

import Foundation

struct Video: Decodable, Identifiable {

    // MARK: - Properties
    
    var id: String?
    var snippet: Snippet?
}
