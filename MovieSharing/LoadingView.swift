//
//  Loader.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 03.11.21.
//

import SwiftUI

struct LoadingView: View {
    
    @State var animate = false
    
    var body: some View {
        
        VStack{
            
            ProgressView().scaleEffect(2.0, anchor: .center)
            
            Text("Loading movies")
                .padding()
        }
        .onAppear{
            
        }
        
    }
}

struct Loader_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
