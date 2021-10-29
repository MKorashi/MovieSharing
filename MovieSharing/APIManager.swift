//
//  VideoRequest.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 29.09.21.
//

import Foundation

class APIManager {
    
    // MARK: - Properties
    
    static let shared = APIManager()
    
    // MARK: - Public API
    
    func fetchVideos(url: String, completion: @escaping (Result) -> Void) {
        let videosRequest = VideosRequest(url: url, completion: completion)
        fetchData(request: videosRequest)
    }
    
    // MARK: - Private API
    
    private init() {}
    
    private func fetchData(request: BaseRequest) {
        guard let urlNotNil = request.url else {
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: urlNotNil, completionHandler: request.handleResponseReceived)
        dataTask.resume()
    }
}
