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
        VideoManager.sharedVideoManager.fetchAllVideos(){
            (result) in
             
            do{
                let videos = try result.get()
                print(videos)
            } catch {
                print(error)
            }
        }
    } 
}
