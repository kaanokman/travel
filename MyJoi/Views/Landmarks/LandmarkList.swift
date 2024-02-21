//
//  LandmarkList.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-27.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            
            List {
                Toggle(isOn: $showFavoritesOnly) {
                                    Text("Favorites only")
                                }
                // lists all the landmarks
                ForEach(filteredLandmarks) { landmark in
                    // links each landmark to its detailed page
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                        
                    } label: { // the row of the landmark is how you get to the detailed page
                        LandmarkRow(landmark: landmark)
                    }
                    
                }
                .navigationTitle("Landmarks")
            }
        }
        
        
    }
}

#Preview {
    LandmarkList()
        .environmentObject(ModelData())
}
