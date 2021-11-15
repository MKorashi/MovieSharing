//
//  ContentView.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 22.09.21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @StateObject private var videoVM = VideoViewModel()
    
    var body: some View {
        ZStack(alignment: .top) {
                if videoVM.isLoading {
                    ZStack {
                        Color(.gray).opacity(0.4).ignoresSafeArea()
                        LoadingView()
                    }
                    
                } else {
                        MainView()
                }
        }
    }
}

// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
