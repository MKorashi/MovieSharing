//
//  LoadingState.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 03.11.21.
//

import Foundation

enum LoadingState<Value> {
    case idle
    case loading
    case failed(Error)
    case loaded(Value)
}
