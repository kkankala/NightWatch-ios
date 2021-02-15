//
//  TaskRowView.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 2/14/21.
//

import SwiftUI

struct TaskRowView: View {
    let task: Task

    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}

struct TaskRowView_Previews: PreviewProvider {
    static var previews: some View {
        TaskRowView(task: Task(name: "Test Task", isComplete: false, lastCompleted: nil))
            .previewLayout(.fixed(width: 300, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
