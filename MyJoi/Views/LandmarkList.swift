//
//  LandmarkList.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-27.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        NavigationView{
            
            // lists all the landmarks
            List(landmarks) {landmark in
                // links each landmark to its detailed page
                NavigationLink{
                    LandmarkDetail()
                    
                } label: { // the row of the landmark is how you get to the detailed page
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        }
        
        
    }
}

#Preview {
    LandmarkList()
}
