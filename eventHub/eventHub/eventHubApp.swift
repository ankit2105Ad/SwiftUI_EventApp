//
//  eventHubApp.swift
//  eventHub
//
//  Created by ankit.dubey03 on 24/04/23.
//

import SwiftUI

@main
struct eventHubApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.colorScheme, .light)
                .environmentObject(TabBar())
        }
    }
}
