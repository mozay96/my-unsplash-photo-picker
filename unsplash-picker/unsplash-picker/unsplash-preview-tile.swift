
//
//  unsplash-preview-tile.swift
//  unsplash-picker
//
//  Created by Mohammed Zayed on 10/3/21.
//

import SwiftUI

struct unsplash_preview_tile: View {

    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack(){
                ForEach(0..<50){ index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(0..<20) { index in
                            RoundedRectangle(cornerRadius: 25.0)
                                .fill(Color.white)
                                .frame(width:150, height:100)
                                .shadow(radius: 10)
                                .padding()
                            }
                        }
                    })
                   
                }
            }
            
        })
        }
    }

struct UnsplashPreviewTile_Previews: PreviewProvider {
    static var previews: some View {
        unsplash_preview_tile()
    
    }
}


