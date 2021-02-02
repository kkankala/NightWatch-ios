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
//struct ContentView: View {
//    var body: some View {
//        List{
//            Section(header:HStack{
//                Image(systemName: "moon.stars")
//                Text("Nightly Tasks")
//            }.font(.title3)){
//                ForEach(nightlyTasks,id:\.self,content:{
//                    taskName in Text(taskName)
//                })
//            }
//            Section(header:HStack{
//                Image(systemName: "sunset")
//                Text("Weekly Tasks")
//            }.font(.title3)){
//                ForEach(weeklyTasks,id:\.self,content:{
//                    taskName in Text(taskName)
//                })
//            }
//            Section(header:HStack{
//                Image(systemName: "calendar")
//                Text("Monthly Tasks")
//            }.font(.title3)){
//                ForEach(monthlyTasks,id:\.self,content:{
//                    taskName in Text(taskName)
//                })
//            }
//        }.listStyle(GroupedListStyle())
//    }
//}

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    // MARK: Nightly Task
                    Group{
                        HStack {
                            Text(Image(systemName:"moon.stars"))
                                .foregroundColor(.yellow)
                                .font(.title)
                                .fontWeight(.heavy)
                            Text("Nightly Tasks")
                                .underline()
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(.yellow)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("Check that the safe is locked")
                    }
                    // MARK: Weekly Tasks
                    Group {
                        Divider()
                        HStack {
                            Text(Image(systemName:"sunset"))
                                .foregroundColor(.yellow)
                                .font(.title)
                                .fontWeight(.heavy)
                            Text("Weekly Tasks")
                                .underline()
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(.yellow)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("Check that the safe is locked")
                    }
                    // MARK: Monthly Tasks
                    Group {
                        Divider()
                        HStack {
                            Text(Image(systemName:"calendar"))
                                .foregroundColor(.yellow)
                                .font(.title)
                                .fontWeight(.heavy)
                            Text("Monthly Tasks")
                                .underline()
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(.yellow)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("Check that the safe is locked")
                    }
                }
                .foregroundColor(.gray)
                Spacer()
            }
            .padding([.top,.leading])
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
