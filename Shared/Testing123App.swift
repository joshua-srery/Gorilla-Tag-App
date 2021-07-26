//
//  Testing123App.swift
//  Shared
//
//  Created by Joshua Srery on 7/20/21.
//

import SwiftUI

@main
struct Testing123App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Text("Players")
                        Image(systemName: "person.2.fill")
                    }
            }
        }
    }
}
