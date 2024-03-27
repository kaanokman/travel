//
//  Landmark.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-27.
//

import Foundation
import SwiftUI
import CoreLocation

// landmark structure (class) that is hashable, codable, and identifiable (to allow for a list to form)
struct Landmark: Hashable, Codable, Identifiable {
    
    // below are all the properties (attributes)
    
    // unique id of landmark
    var id: Int
    // name of landmark
    var name: String
    // park landmark is located in
    var park: String
    // state park is located in
    var state: String
    // description of the landmark
    var description: String
    // whether or not it has been marked as a favourite by the user
    var isFavorite: Bool
    // name of the image file
    private var imageName: String
    // image obtained using imageName
    var image: Image {
        Image(imageName)
    }
    // coordinates of landmark
    private var coordinates: Coordinates
    // object/instance of class "CLLocationCoordinate2D" class created using coordinates of landmark
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    // defines way coordinates are stored (dictionary with latitude and longitude)
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
