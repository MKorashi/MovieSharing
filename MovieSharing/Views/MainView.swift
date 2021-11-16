//
//  MainView.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 05.11.21.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Properties
    
    @State var selection = 0
    
    var body: some View {
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack{
            TabView(selection: $selection) {
                MoviesView()
                    .tabItem {
                        if selection == 0 {
                            Image("MoviesLight")
                        } else {
                            Image("MoviesDisabled")
                        }
                        Text("Movies")
                    }.tag(0)
                FavoritesView()
                    .tabItem {
                        if selection == 1 {
                            Image("FavoritesLight")
                        } else {
                            Image("FavoritesDisabled")
                        }
                        Text("Favorites")
                        }.tag(1)
                SettingsView()
                    .tabItem {
                        if selection == 2 {
                            Image("SettingsLight")
                        } else {
                            Image("SettingsDisabled")
                        }
                        Text("Settings")
                        }.tag(2)
            }
        }
    }
}

// MARK: - Previews

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
