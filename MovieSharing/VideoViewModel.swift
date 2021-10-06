//
//  VideoViewModel.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation

class VideoViewModel: ObservableObject {
    
    // MARK: - Properties
    
    private var apiService: APIManager
    
    // MARK: - Public API
    
    init() {
        self.apiService = APIManager()
        getVideos()
    }
    
    func getVideos(){
        self.apiService.getVideos {
            (data) in print(data)
        }
    } 
}
