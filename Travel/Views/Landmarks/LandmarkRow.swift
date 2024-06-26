//
//  LandmarkView.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-27.
//

import SwiftUI

struct LandmarkRow
: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                            Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                        }
                
        }
    }
}

#Preview {
    Group{
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
    .previewLayout(.fixed(width: 300, height: 70))
    
}
