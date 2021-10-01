//
//  MovieSharingApp.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 22.09.21.
//

import SwiftUI

@main
struct MovieSharingApp: App {
    @StateObject var videoViewModel = VideoViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
