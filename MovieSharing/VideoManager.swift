//
//  VideoManager.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 08.10.21.
//

import Foundation

class VideoManager {
    
    // MARK: - Properties
    
    static let sharedVideoManager = VideoManager()
    var videos: VideoContainer?
    
    // MARK: - Public API
    
    func fetchAllVideos(completion: @escaping (Result) -> Void) {
        let url = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLeagipoZmyfnIxkk9qKN-ewkuDeI-JP0i&key=AIzaSyB2WofOa5qg3RLlCnwGJ31Mw9O-PaKJS_8"

        APIManager.shared.fetchVideos(url: url) { result in
            switch result {
                case .Success(let videos):
                    guard let videosNotNil = videos as? VideoContainer else {
                        completion(.Failure(.noDataAvailable))
                        return
                    }
                    self.videos = videosNotNil
                    completion(.Success(videos))
                    break
            
                case .Failure(let error):
                    completion(.Failure(error))
                    break
            }
        }
    }
}
