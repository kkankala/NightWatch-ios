//
//  Task.swift
//  NightWatch
//
//  Created by Kalyan Kankala on 2/14/21.
//

import Foundation

struct Task:Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
