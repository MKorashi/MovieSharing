//
//  VideoManager.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 08.10.21.
//

import Foundation

class VideoManager{
    
    // MARK: - Properties
    
    static let sharedVideoManager = VideoManager()
    
    // MARK: - Public API
    
    func fetchAllVideos(){
        
        let url = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLeagipoZmyfnIxkk9qKN-ewkuDeI-JP0i&key=AIzaSyB2WofOa5qg3RLlCnwGJ31Mw9O-PaKJS_8"
        
        APIManager.shared.fetchVideos(url: url){
            (result) in print(result)
            return
        }
        
    }
}
