//
//  MoviesListView.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 15.11.21.
//

import SwiftUI

struct MoviesListView: View {
    
    // MARK: - Properties
    
    @StateObject var videoVM = VideoViewModel()
    var body: some View {
        // List Creation
        if let videosNotNil = videoVM.videos {
            VStack{
                List(videosNotNil) { video in
                            // Cell Layout
                            VStack(alignment: .leading) {
                                if let imageURLNotNil = video.snippet?.thumbnails?.mediumResolutionImage?.url {
                                    ImageView(withURL: imageURLNotNil)
                                }
                               Text(video.snippet?.title ?? "")
                                    .fontWeight(.bold)
                            }
                }
            }
            .frame(height: UIScreen.main.bounds.height,
                   alignment: .top)
            
        }
    }
}

// MARK: - Previews

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
