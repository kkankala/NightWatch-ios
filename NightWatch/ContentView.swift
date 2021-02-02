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
        List{
            Section(header:HStack{
                Image(systemName: "moon.stars")
                Text("Nightly Tasks")
            }.font(.title3)){
                ForEach(nightlyTasks,id:\.self,content:{
                    taskName in Text(taskName)
                })
            }
            Section(header:HStack{
                Image(systemName: "sunset")
                Text("Weekly Tasks")
            }.font(.title3)){
                ForEach(weeklyTasks,id:\.self,content:{
                    taskName in Text(taskName)
                })
            }
            Section(header:HStack{
                Image(systemName: "calendar")
                Text("Monthly Tasks")
            }.font(.title3)){
                ForEach(monthlyTasks,id:\.self,content:{
                    taskName in Text(taskName)
                })
            }
        }.listStyle(GroupedListStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
