//
//  ContentView.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 1/28/21.
//

import SwiftUI


struct ContentView: View {
    // array of tasks.
    @ObservedObject var nightWatchTasks: NightWatchTasks
    @State private var focusModeOn = false

    var body: some View {
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    let taskIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.nightlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices)) // combines indices n tasks.
                    ForEach(taskIndexPairs, id: \.0.id, content: {
                        task, taskIndex in

                        // can I hold a copy of the dollar-signed version of the nightwatchtasks instance?
                        let nightWatchTasksWrapper = $nightWatchTasks

                        //Can I use that wrapper to make a bindindable?
                        let tasksBinding = nightWatchTasksWrapper.nightlyTasks

                        // If I get a task out of that Binding<[Task]>(task array), will that element be a binding to a task(Binding<Task>)?
                        let theTasksBinding = tasksBinding[taskIndex]

                        // Always show with Focus Mode is OFF
                        // Also show when Focus Mode is ON -- AND -- the task is INcomplete
                        if focusModeOn == false || (focusModeOn && task.isComplete == false) {
                            NavigationLink(destination: DetailsView(task: theTasksBinding), label: { TaskRowView(task: task) })
                        }
                    }).onDelete(perform: { indexSet in
                        nightWatchTasks.nightlyTasks.remove(atOffsets: indexSet)
                    }).onMove(perform: { indices, newOffset in
                        nightWatchTasks.nightlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
                    let taskIndices = nightWatchTasks.weeklyTasks.indices
                    let tasks = nightWatchTasks.weeklyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    ForEach(taskIndexPairs, id: \.0.id, content: {
                        task, taskIndex in
                        // can I hold a copy of the dollar-signed version of the nightwatchtasks instance?
                        let nightWatchTasksWrapper = $nightWatchTasks

                        //Can I use that wrapper to make a bindindable?
                        let tasksBinding = nightWatchTasksWrapper.weeklyTasks

                        // If I get a task out of that Binding<[Task]>(task array), will that element be a binding to a task(Binding<Task>)?
                        let theTasksBinding = tasksBinding[taskIndex]
                        NavigationLink(destination: DetailsView(task: theTasksBinding), label: { TaskRowView(task: task) })
                    }).onDelete(perform: { indexSet in
                        nightWatchTasks.weeklyTasks.remove(atOffsets: indexSet)
                    }).onMove(perform: { indices, newOffset in
                        nightWatchTasks.weeklyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    let taskIndices = nightWatchTasks.monthlyTasks.indices
                    let tasks = nightWatchTasks.monthlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    ForEach(taskIndexPairs, id: \.0.id, content: {
                        task, taskIndex in
                        // can I hold a copy of the dollar-signed version of the nightwatchtasks instance?
                        let nightWatchTasksWrapper = $nightWatchTasks

                        //Can I use that wrapper to make a bindindable?
                        let tasksBinding = nightWatchTasksWrapper.monthlyTasks

                        // If I get a task out of that Binding<[Task]>(task array), will that element be a binding to a task(Binding<Task>)?
                        let theTasksBinding = tasksBinding[taskIndex]
                        NavigationLink(destination: DetailsView(task: theTasksBinding), label: { TaskRowView(task: task) })
                    }).onDelete(perform: { indexSet in
                        nightWatchTasks.monthlyTasks.remove(atOffsets: indexSet)
                    }).onMove(perform: { indices, newOffset in
                        nightWatchTasks.monthlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
            }
                .listStyle(GroupedListStyle())
                .navigationTitle("Home")
                .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Reset"){
                            // cant do self.nightWatchTasks = NightWatchTasks(), setting individual items
                            let refreshedNightWatchTasks = NightWatchTasks()
                            self.nightWatchTasks.nightlyTasks = refreshedNightWatchTasks.nightlyTasks
                            self.nightWatchTasks.weeklyTasks = refreshedNightWatchTasks.weeklyTasks
                            self.nightWatchTasks.monthlyTasks = refreshedNightWatchTasks.monthlyTasks
                        }
                    }
                ToolbarItem(placement: .bottomBar) {
                    Toggle(isOn: $focusModeOn, label: {
                        Text("Focus Mode")
                    })
                }
            }
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
