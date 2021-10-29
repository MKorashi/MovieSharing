//
//  VideosRequest.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 22.10.21.
//

import Foundation

class VideosRequest: BaseRequest {
    
    override func handleResponseProcessed(result: Result) {
        do {
            switch result {
                case .Failure(let networkingError): completion(.Failure(networkingError))
                case .Success(let videoData):
                    let videosNotNil = try JSONDecoder().decode(VideoContainer.self, from: videoData as! Data)
                    completion(.Success(videosNotNil))
                    break
            }
        } catch {
            completion(.Failure(.canNotProcessData))
        }
    }
}
