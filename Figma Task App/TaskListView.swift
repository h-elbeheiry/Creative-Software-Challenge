//
//  TaskListView.swift
//  Figma Task App
//
//  Created by Hussein Elbeheiry on 10/28/20.
//

import Foundation
import SwiftUI

struct Task: Identifiable, Hashable, Codable {
    var id = UUID()
    var title: String
    var priority: Int
    var dueDate: String
}

struct TasksListView: View {
    @State private var selection: Set<Task> = []
    let tasks = [Task]()
    var today = DatePickerView()
    
    var body: some View {
        
        VStack {
            ScrollView {
                ForEach(tasksData) { task in
                    TaskView(task: task, isExpanded: self.selection.contains(task))
                        .onTapGesture{
                            self.selectDeselect(task)
                        }
                        .animation(.linear(duration: 0.3))
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    print("Add")
                }) {
                    Image(systemName: "plus.circle.fill")
                        .frame(width: 48, height: 48)
                        .font(.system(size: 48))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0.3803921569, blue: 0.3490196078, alpha: 1)))
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
                }
                .buttonStyle(BorderlessButtonStyle())
            }
        }
    }
    
    func selectDeselect(_ task: Task) {
        print("Selected \(task.id)")
        
        if selection.contains(task) {
            selection.remove(task)
        }else {
            selection.insert(task)
        }
    }
}

// Test Data
var tasksData = [
    Task(title: "Task 1", priority: 2, dueDate: "Nov 2, 5:00 PM"),
    Task(title: "Task 2", priority: 2, dueDate: "Nov 2, 5:00 PM"),
    Task(title: "Task 3", priority: 2, dueDate: "Nov 2, 5:00 PM")
]
