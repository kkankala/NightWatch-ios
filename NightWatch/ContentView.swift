//
//  ContentView.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 1/28/21.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    
    var body: some View {
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    ForEach(nightWatchTasks.nightlyTasks, content: {
                        task in NavigationLink(destination: DetailsView(task: task), label: { TaskRowView(task: task) })
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
                    ForEach(nightWatchTasks.weeklyTasks, content: {
                        task in NavigationLink(destination: DetailsView(task: task), label: { TaskRowView(task: task) })
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    ForEach(nightWatchTasks.monthlyTasks, content: {
                        task in NavigationLink(destination: DetailsView(task: task), label: { TaskRowView(task: task) })
                    })
                }
            }.listStyle(GroupedListStyle())
                .navigationTitle("Home")
        }
    }
}

struct TaskSectionHeader: View {
    var symbolSystemName: String
    var headerText: String

    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }.font(.title3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        
        ContentView(nightWatchTasks: nightWatchTasks)
    }
}
