//
//  MoviesView.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 09.11.21.
//

import SwiftUI

struct MoviesView: View {
    
    // MARK: - Properties
    
    @State private var selectedView = "Grid"
    @StateObject private var videoVM = VideoViewModel()
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedView) {
                Text("Grid").tag("Grid")
                Text("List").tag("List")
            }
                .pickerStyle(.segmented)
                
            Text(selectedView)
            Spacer()
        }
}
    
// MARK: - Previews

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}

}
