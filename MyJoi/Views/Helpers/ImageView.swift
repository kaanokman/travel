//
//  CircleImage.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-27.
//

import SwiftUI

struct ImageView: View {
    var image: Image // attribute from landmark class
        
    
    var body: some View {
        image
            //.resizable()
            //.aspectRatio(contentMode: .fill)
            .frame(maxWidth: .infinity, maxHeight: 300)
            //.frame(width: 300, height: 300, alignment: .topLeading)
            
            .clipped()
            
            //.clipShape(Circle())
            //.overlay{
                //Circle().stroke(.white, lineWidth: 5)
            }
            
            //.shadow(radius: 10)
    }
//}

#Preview {
    ImageView(image: Image("turtlerock"))
}
