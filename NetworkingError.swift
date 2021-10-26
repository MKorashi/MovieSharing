//
//  NetworkingError.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 26.10.21.
//

import Foundation

//FIX ME: https://jira.tdsoftware.de/browse/TDSMSM-6
enum NetworkingError: Error {
    case noDataAvailable
    case canNotProcessData
    case emptyData
}
