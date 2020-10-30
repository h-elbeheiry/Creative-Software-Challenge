//
//  TaskView.swift
//  Figma Task App
//
//  Created by Hussein Elbeheiry on 10/28/20.
//

import SwiftUI

struct TaskView: View {
    @State var showsDatePicker = false
    @State var p_low = false
    @State var p_medium = false
    @State var p_high = false
    
    @State var task: Task
    
    let isExpanded: Bool
    
    var body: some View {
        
        VStack {
            HStack {
                CheckView()
                Text(task.title)
                
                Spacer()
            }
            
            if isExpanded {
                HStack {
                    Button(action: {
                        print("Cancel")
                    }) {
                        Image(uiImage: #imageLiteral(resourceName: "Cancel Icon"))
                            .resizable()
                            .frame(width: 16, height: 16)
                    }.buttonStyle(BorderlessButtonStyle())
                    
                    Text("\(task.dueDate)")
                        .font(.custom("Avenir", size: 12))
                        .foregroundColor(Color(#colorLiteral(red: 0.736659348, green: 0.7322819829, blue: 0.7400253415, alpha: 1)))
                    
                    Button(action: {
                        print("Date")
                        self.showsDatePicker.toggle()
                    }) {
                        Image(uiImage: #imageLiteral(resourceName: "Calendar icon"))
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    
                    Spacer()
                    
                }
                HStack {
                    Button(action: {
                        print("1")
                        task.priority = 1
                        p_low.toggle()
                        p_medium = false
                        p_high = false
                    }) {
                        Text("Low")
                            .frame(width: 56, height: 24)
                            .font(.custom("Avenir", size: 12))
                            .foregroundColor(.white)
                            .background(p_low ? Color(#colorLiteral(red: 0.3725490196, green: 0.8039215686, blue: 0.5529411765, alpha: 1)):Color(#colorLiteral(red: 0.7960784314, green: 0.7960784314, blue: 0.7960784314, alpha: 1)))
                            .cornerRadius(20)
                    }.buttonStyle(BorderlessButtonStyle())
                    
                    Button(action: {
                        print("2")
                        task.priority = 2
                        p_medium.toggle()
                        p_low = false
                        p_high = false
                    }) {
                        Text("Medium")
                            .frame(width: 80, height: 24)
                            .font(.custom("Avenir", size: 12))
                            .foregroundColor(.white)
                            .background(p_medium ? Color(#colorLiteral(red: 0.9843137255, green: 0.5137254902, blue: 0.2, alpha: 1)):Color(#colorLiteral(red: 0.7960784314, green: 0.7960784314, blue: 0.7960784314, alpha: 1)))
                            .cornerRadius(20)
                    }.buttonStyle(BorderlessButtonStyle())
                    
                    Button(action: {
                        print("3")
                        task.priority = 3
                        p_high.toggle()
                        p_low = false
                        p_medium = false
                    }) {
                        Text("High")
                            .frame(width: 60, height: 24)
                            .font(.custom("Avenir", size: 12))
                            .foregroundColor(.white)
                            .background(p_high ? Color(#colorLiteral(red: 1, green: 0.3803921569, blue: 0.3490196078, alpha: 1)):Color(#colorLiteral(red: 0.7960784314, green: 0.7960784314, blue: 0.7960784314, alpha: 1)))
                            .cornerRadius(20)
                    }.buttonStyle(BorderlessButtonStyle())
                }
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(#colorLiteral(red: 0.736659348, green: 0.7322819829, blue: 0.7400253415, alpha: 1)), lineWidth: 1)
        )
    }
    
    func isDatePickerShown() {
        
    }
}
