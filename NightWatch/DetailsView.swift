//
//  DetailsView.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 2/14/21.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task

    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for task description")
            Button("Mark Complete") {
                task.isComplete = true
            }
        }.navigationTitle("Test Title")
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {

        DetailsView(task: Binding<Task>.constant(Task(name: "test task", isComplete: false, lastCompleted: nil)))
    }
}
