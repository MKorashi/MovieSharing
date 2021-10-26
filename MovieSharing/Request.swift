//
//  Request.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 20.10.21.
//

import Foundation

open class BaseRequest {
    
    // MARK: - Properties
    
    var url: URL?
    
    //FIX ME: Generalize Result type: https://jira.tdsoftware.de/browse/TDSMSM-11
    var completion: (Result<VideoContainer,NetworkingError>) -> Void
    
    // MARK: - Public API
    
    init(url: String, completion: @escaping (Result<VideoContainer,NetworkingError>) -> Void) {
        
        self.url = URL(string: url)
        self.completion = completion
    }

    
    func handleResponseReceived(data: Data?, response: URLResponse?, error: Error?) {
        
        guard let jsonData = data else {
            handleResponseProcessed(result: .failure(.noDataAvailable))
            return
        }
        handleResponseProcessed(result: .success(jsonData))
    }
    
    func handleResponseProcessed(result: Result<Data, NetworkingError>) {
        
    }
}
