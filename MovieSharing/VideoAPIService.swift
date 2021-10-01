//
//  VideoRequest.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 29.09.21.
//

import Foundation

enum VideoError: Error {
    case noDataAvailable
    case canNotProcessData
}

struct VideoAPIService {
    let resourceURL: URL
    
    init() {
        let resourceString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLeagipoZmyfnIxkk9qKN-ewkuDeI-JP0i&key=AIzaSyB2WofOa5qg3RLlCnwGJ31Mw9O-PaKJS_8"
        
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func getVideos (completion: @escaping(Result<[Video],VideoError>)-> Void) {
        
        let dataTask = URLSession.shared.dataTask(with: resourceURL) {
            data, _, _ in
            
            guard let jsonData = data else {
                completion(.failure(.noDataAvailable))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let videosResponse = try decoder.decode(VideosResponse.self, from: jsonData)
                let videos_list = videosResponse.items
                completion(.success(videos_list))
            }
            catch {
                completion(.failure(.canNotProcessData))
            }
        }
        dataTask.resume()
    }
}
