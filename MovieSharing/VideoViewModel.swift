//
//  VideoViewModel.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

class VideoViewModel: ObservableObject {
    
    // MARK: - Public API
    
    init() {
        fetchVideos()
    }
    
    func fetchVideos() {
        APIManager.shared.fetchVideos {
            (data) in print(data)
        }
    } 
}
