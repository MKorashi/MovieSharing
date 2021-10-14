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
    
    // MARK: - Private API
    
    private init() {}

    // MARK: - Public API
    
    func fetchVideos(url: String, completion: @escaping (Result<[Video],VideoError>) -> Void) {
        
        
        guard let resourceURL = URL(string: url) else {
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: resourceURL) {
            data, _, _ in
            
            guard let jsonData = data else {
                completion(.failure(.noDataAvailable))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let videosResponse = try decoder.decode(VideoContainer.self, from: jsonData)
                guard let videosListNotNil = videosResponse.videos else {
                    completion(.failure(.emptyData))
                    return
                }
                completion(.success(videosListNotNil))
            }
            catch {
                completion(.failure(.canNotProcessData))
            }
        }
        dataTask.resume()
    }
}
