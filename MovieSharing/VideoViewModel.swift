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
    @Published var videos: Any?
    
    // MARK: - Public API
    
    init() {
        fetchVideos()
    }
    
    func fetchVideos() {
        self.isLoading = true
        print(String(self.isLoading))
        VideoManager.sharedVideoManager.fetchAllVideos() { result in
            switch (result){
                case .Success(let videos):
                    guard let videosNotNil = videos as? VideoContainer else {
                        return
                    }
                    self.videos = videosNotNil
                    self.isLoading = false
                    break

                default:
                    break
            }
        }
    }
}
