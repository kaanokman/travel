//
//  CircleImage.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-27.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    CircleImage()
}
