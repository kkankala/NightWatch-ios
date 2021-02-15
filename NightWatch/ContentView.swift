//
//  ContentView.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 1/28/21.
//

import SwiftUI

let nightlyTasks = [
    Task(name: "Check all windows", isComplete: false, lastCompleted: nil),
    Task(name: "Check all doors", isComplete: false, lastCompleted: nil),
    Task(name: "Check that the safe is locked", isComplete: false, lastCompleted: nil),
    Task(name: "Check the mailbox", isComplete: false, lastCompleted: nil),
    Task(name: "Inspect security camera", isComplete: false, lastCompleted: nil),
    Task(name: "Clear ice from sidewalk", isComplete: false, lastCompleted: nil),
    Task(name: "Document \"strange and unusual\" occurances", isComplete: false, lastCompleted: nil)
]

let weeklyTasks = [
    Task(name: "Check inside all vacant rooms", isComplete: false, lastCompleted: nil),
    Task(name: "Walk the perimeter of the property", isComplete: false, lastCompleted: nil)
]

let monthlyTasks = [
    Task(name: "Test security alarm", isComplete: false, lastCompleted: nil),
    Task(name: "Test motion detectors", isComplete: false, lastCompleted: nil),
    Task(name: "Test smoke alarms", isComplete: false, lastCompleted: nil)
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    ForEach(nightlyTasks, content: {
                        task in NavigationLink(destination: DetailsView(task: task),label:{TaskRowView(task: task)})
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
                    ForEach(weeklyTasks, content: {
                        task in NavigationLink(destination: DetailsView(task: task),label:{TaskRowView(task: task)})
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    ForEach(monthlyTasks, content: {
                        task in NavigationLink(destination: DetailsView(task: task),label:{TaskRowView(task: task)})
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
        ContentView()
    }
}
