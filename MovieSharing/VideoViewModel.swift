//
//  VideoViewModel.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation
import SwiftUI

class VideoViewModel: ObservableObject {
    
    @Published var isLoading: Bool = false
    @Published var videos: [Video] = []
    
    // MARK: - Public API
    
    init() {
        
        fetchVideos()
    }
    
    func fetchVideos() {
        self.isLoading = true
        print(String(self.isLoading))
        VideoManager.sharedVideoManager.fetchAllVideos() { result in
            print(result)
            print(String(self.isLoading))
            print(self.videos)
            
            switch (result){
                
            case .Success(let videos):
                
                    //self.videos = videosNotNil
                    self.isLoading = false

                print(String(self.isLoading))
                break
                
            default:
                break
                
            }
        }
    }
    
    func fetchVideosIfNeeded() {
        
    }
}
