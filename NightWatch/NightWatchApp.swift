//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 1/28/21.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @StateObject private var nightWatchTasks = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTasks)
        }
    }
}
