//
//  VideoViewModel.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 01.10.21.
//

import Foundation
import SwiftUI

class VideoViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Published var isLoading: Bool = false
    @Published var videos: [Video]?
    
    // MARK: - Public API
    
    init() {
        fetchVideos()
    }
    
    func fetchVideos() {
        self.isLoading = true
        VideoManager.sharedVideoManager.fetchAllVideos() { result in
            switch (result){
                case .Success(let videos):
                    guard let videosNotNil = videos as? VideoContainer else {
                        return
                    }
                    
                self.videos = self.filterVideos(videos: videosNotNil.videos!)
                    self.isLoading = false
                    break

                default:
                    break
            }
        }
    }
    
    func filterVideos(videos: [Video]) -> [Video] {
        var filteredVideos = [] as [Video]
        for video in videos {
            if (video.snippet?.title != "Deleted video"){
                filteredVideos.append(video)
            }
        }
        return filteredVideos
    }
}
