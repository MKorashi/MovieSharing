//
//  VideoManager.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 08.10.21.
//

import Foundation

class VideoManager{
    
    func fetchVideos(){
        
        let resourceString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLeagipoZmyfnIxkk9qKN-ewkuDeI-JP0i&key=AIzaSyB2WofOa5qg3RLlCnwGJ31Mw9O-PaKJS_8"
        
        APIManager.shared.fetchVideos(resourceString: resourceString, {}){
            //(data) in print(data)
        }
        
    }
}
