//
//  MoviesListView.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 15.11.21.
//

import SwiftUI

struct MoviesListView: View {
    
    @StateObject var videoVM = VideoViewModel()
    var body: some View {
        // List Creation
        if let videosNotNil = videoVM.videos {
            List(videosNotNil) { video in
                        // Cell Layout
                        VStack(alignment: .leading) {
                            //AsyncImage(url: video.snippet?.thumbnails?.standardResolutionImage?.url)
                            if let imageURLNotNil = video.snippet?.thumbnails?.mediumResolutionImage?.url {
                                ImageView(withURL: imageURLNotNil)
                            }
                            
                           Text(video.snippet?.title ?? "")
                                .fontWeight(.bold)
                           }
                    }
        }
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
