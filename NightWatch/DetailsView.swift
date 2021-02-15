//
//  DetailsView.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 2/14/21.
//

import SwiftUI

struct DetailsView: View {
    let task: Task

    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for task description")
            Text("Placeholder for mark complete button")
        }.navigationTitle("Test Title")
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {

        DetailsView(task: Task(name: "test task", isComplete: false, lastCompleted: nil))
    }
}
