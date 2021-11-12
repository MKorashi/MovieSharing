//
//  ContentView.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 22.09.21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var videoVM = VideoViewModel()
    
    // MARK: - Properties
    
    var body: some View {
        
        ZStack{
            NavigationView{
                if videoVM.isLoading {
                    ZStack {
                        Color(.gray).opacity(0.4).ignoresSafeArea()
                        LoadingView()
                        
                    }
                    
                } else {
                    ZStack{
                        MainView()
                    }
                    
                }
                    

                
            }
            
            
        }
        .onAppear{
            
            
        }
    }
}

// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
