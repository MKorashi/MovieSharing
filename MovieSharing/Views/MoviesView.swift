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
    var body: some View {
        //ZStack(alignment: .topLeading, content: <#T##() -> _#>)
        VStack {
            Picker("", selection: $selectedView) {
                Text("Grid").tag("Grid")
                Text("List").tag("List")
            }.pickerStyle(.segmented)
                
            if selectedView == "Grid" {
                MoviesGridView()
            } else {
                MoviesListView()
            }
           // Spacer()
        }//.background(Color.red)
        .frame(height: UIScreen.main.bounds.height,
               alignment: .top)
        .padding(.top, 120)
    }
    
// MARK: - Previews

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
    }
}
