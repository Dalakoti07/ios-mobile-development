//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Saurabh Dalakoti on 15/02/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
