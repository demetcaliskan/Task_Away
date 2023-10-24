//
//  TaskListView.swift
//  Task Away
//
//  Created by Demet Çalışkan on 24.10.2023.
//

import SwiftUI

struct StaticTaskListView: View {
    
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) {
            task in HStack {
                Image(systemName: task.isCompleted ? "largecircle.fill.circle": "circle")
                Text(task.title)
            }
        }
    }
}

struct StaticTaskListView_Previews: PreviewProvider {
    static var previews: some View {
        StaticTaskListView(title: "All", tasks: Task.examples())
    }
}
