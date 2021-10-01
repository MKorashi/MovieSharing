//
//  VideoViewModel.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

class VideoViewModel: ObservableObject {
    
    private var apiService: VideoAPIService
    
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
