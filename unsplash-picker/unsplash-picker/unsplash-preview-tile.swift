
//
//  unsplash-preview-tile.swift
//  unsplash-picker
//
//  Created by Mohammed Zayed on 10/3/21.
//

import SwiftUI

struct unsplash_preview_tile: View {
    let imageURL: String
    let isSelected: Bool
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            ZStack() { image
                            .resizable()
                            .frame(width: 500, height: 500)
                            .aspectRatio(contentMode: .fill)
                            Text("Credit: Ricardo Gomez Angel")
                                            .font(.callout)
                                            .padding(6)
                                            .foregroundColor(.white)
                                    .background(Color.black)
                                .opacity(0.8)
                                .cornerRadius(10.0)
                                .padding(6)
                
                if isSelected{
                    Image(systemName: "checkmark.circle")
                        .offset(x:110,y:50)
                }
            }
        }
                     placeholder: {
                        Image(systemName: "photo")
                                       .imageScale(.large)
                                       .foregroundColor(.gray)
                }
        }
    }

struct UnsplashPreviewTile_Previews: PreviewProvider {
    static var previews: some View {
        unsplash_preview_tile(imageURL: "https://images.unsplash.com/photo-1599420186946-7b6fb4e297f0?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80", isSelected:false)
    
    }
}


