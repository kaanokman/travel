//
//  MyJoiApp.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-26.
//

import SwiftUI

@main
struct MyJoiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
