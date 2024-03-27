//
//  MyJoiApp.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-26.
//

import SwiftUI

@main
struct TravelApp: App {
    
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup(id: "content-view") {
            ContentView()
                .environmentObject(modelData)

        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }//.immersionStyle(selection: .constant(.full), in: .full)
        
        
    }

}
