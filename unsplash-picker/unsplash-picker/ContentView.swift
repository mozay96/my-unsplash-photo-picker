//
//  ContentView.swift
//  unsplash-picker
//
//  Created by Mohammed Zayed on 10/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world!")
            .padding()
            HStack{
                Image(systemName: "photo.fill").shadow(color: .black, radius: 0.05, x: 0.05, y: 1.0)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

