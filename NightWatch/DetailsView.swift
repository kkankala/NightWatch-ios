//
//  DetailsView.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 2/14/21.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String

    var body: some View {
        VStack {
            Text(taskName)
            Text("Placeholder for task description")
            Text("Placeholder for mark complete button")
        }.navigationTitle("Test Title")
    }
}
