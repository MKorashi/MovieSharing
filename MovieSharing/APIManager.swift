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
    
    // MARK: - Types
    //FIX ME:
    enum VideoError: Error {
        case noDataAvailable
        case canNotProcessData
        case emptyData
    }
    
    // MARK: - Public API
    
    func fetchVideos(url: String, completion: @escaping (Result<VideoContainer,VideoError>) -> Void){
        
        fetchData(url: url){ result in
            
            do {
                let videoData = try result.get()
                let videosNotNil = try JSONDecoder().decode(VideoContainer.self, from: videoData)
                completion(.success(videosNotNil))
                
            } catch {
                completion(.failure(.noDataAvailable))
            }
        }
    }
    
    // MARK: - Private API
    
    private init() {}
    
    private func fetchData(url: String, completion: @escaping (Result<Data, VideoError>) -> Void) {
        
        guard let resourceURL = URL(string: url) else {
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: resourceURL){
            data, response, error in
            
            guard let jsonData = data else {
               completion(.failure(.noDataAvailable))
                return
            }
            completion(.success(jsonData))
        }
        dataTask.resume()
    }
}
