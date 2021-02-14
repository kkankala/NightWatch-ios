//
//  ContentView.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 1/28/21.
//

import SwiftUI

let nightlyTasks = [
"Check all windows",
"Check all doors",
    "Check that the safe is locked",
    "Check the mailbox",
    "Inspect security camera",
    "Clear ice from sidewalk",
    "Document \"strange and unusual\" occurances"
]

let weeklyTasks = [
    "Check inside all vacant rooms",
    "Walk the perimeter of the property"
]

let monthlyTasks = [
    "Test security alarm",
    "Test motion detectors",
    "Test smoke alarms"
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                Section(header:TaskSectionHeader(symbolSystemName:"moon.stars",headerText:"Nightly Tasks")){
                    ForEach(nightlyTasks,id:\.self,content:{
                        taskName in NavigationLink(taskName, destination: DetailView(taskName: taskName))
                    })
                }
                Section(header:TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")){
                    ForEach(weeklyTasks,id:\.self,content:{
                        taskName in NavigationLink(taskName, destination: DetailView(taskName: taskName))
                    })
                }
                Section(header:TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")){
                    ForEach(monthlyTasks,id:\.self,content:{
                        taskName in NavigationLink(taskName, destination: DetailView(taskName: taskName))
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
        HStack{
            Image(systemName: symbolSystemName)
            Text(headerText)
        }.font(.title3)
    }
}

struct DetailView: View {
    let taskName: String;
    
    var body: some View {
        VStack {
            Text(taskName)
            Text("Placeholder for task description")
            Text("Placeholder for mark complete button")
        }
        .navigationTitle("Test Title")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
