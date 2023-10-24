//
//  Task.swift
//  Task Away
//
//  Created by Demet Çalışkan on 24.10.2023.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date?
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date? = nil, details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Buy milk", dueDate: Calendar.current.date(byAdding: .day, value:2, to: Date())!)
    }
    
    static func examples() -> [Task] {
            [
                Task(title: "Go to book store", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value:4, to: Date())!),
                Task(title: "Change sheets", dueDate: Calendar.current.date(byAdding: .day, value:1, to: Date())!),
                Task(title: "Talk to your parents"),
                Task(title: "Hangout with your friends", dueDate: Calendar.current.date(byAdding: .day, value:5, to: Date())!),
                Task(title: "Go to work", dueDate: Calendar.current.date(byAdding: .day, value:1, to: Date())!)
            ]
    }
}
