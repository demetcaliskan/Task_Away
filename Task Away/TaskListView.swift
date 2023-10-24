//
//  TaskListView.swift
//  Task Away
//
//  Created by Demet Çalışkan on 25.10.2023.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    @Binding var tasks: [Task]
    @State private var selectedTask: Task? = nil
    @State private var inspectorIsShown: Bool = false
    
    var body: some View {
        List($tasks) {
            $task in
            TaskView(task: $task, selectedTask: $selectedTask, inspectorIsShown: $inspectorIsShown)
        }.toolbar {
            ToolbarItemGroup {
                Button {
                    tasks.append(Task(title: "New Task"))
                } label: {
                    Label("Add New Task", systemImage: "plus")
                }
                
                Button {
                    inspectorIsShown.toggle()
                } label: {
                    Label("Show inspector", systemImage: "sidebar.right")
                }
            }
           
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(title: "All", tasks: .constant(Task.examples()))
    }
}


// HStack {
//Image(systemName: task.isCompleted ? "largecircle.fill.circle": //"circle")
//Text(task.title)
//}
