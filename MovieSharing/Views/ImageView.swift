//
//  ImageView.swift
//  MovieSharing
//
//  Created by Mariam Korashi on 16.11.21.
//

import Combine
import SwiftUI

struct ImageView: View {
    @ObservedObject var imageLoader:ImageLoader
    @State var image:UIImage = UIImage()
    
init(withURL url:String) {
        imageLoader = ImageLoader(urlString:url)
    }
    
var body: some View {
    VStack {
        Image(uiImage: image)
            .aspectRatio(contentMode: .fit)
            .background(Color(.black)) //for padding
            .cornerRadius(10)
            .shadow(color: .gray.opacity(0.5), radius: 5, y: 10)
            
    }.onReceive(imageLoader.dataPublisher) { data in
        self.image = UIImage(data: data) ?? UIImage()
    }
  }
}
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(withURL: "")
    }
}
