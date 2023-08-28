//
//  MapView.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-27.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)
        
    
    var body: some View {
        //Map(coordinateRegion: $region)
        Map {
            Marker("Joshua Tree National Park", coordinate: region)
                .tint(.orange)
        }
    }
}

#Preview {
    MapView()
}
