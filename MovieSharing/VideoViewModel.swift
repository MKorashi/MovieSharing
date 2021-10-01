//
//  VideoViewModel.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

class VideoViewModel: ObservableObject {
    
    // MARK: - Properties
    
    private var apiService: VideoAPIService
    
    // MARK: - Public API
    
    init() {
        self.apiService = VideoAPIService()
        getVideos()
    }
    
    func getVideos(){
        self.apiService.getVideos {
            (data) in print(data)
        }
    } 
}
