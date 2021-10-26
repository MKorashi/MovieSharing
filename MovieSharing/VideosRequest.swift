//
//  VideosRequest.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 22.10.21.
//

import Foundation

class VideosRequest: BaseRequest {
    
    override func handleResponseProcessed(result: Result<Data, NetworkingError>) {
        
        do {
            let videoData = try result.get()
            let videosNotNil = try JSONDecoder().decode(VideoContainer.self, from: videoData)
           completion(.success(videosNotNil))
            
        } catch {
            completion(.failure(.noDataAvailable))
        }
        
    }
}
