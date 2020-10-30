//
//  ContentView.swift
//  Figma Task App
//
//  Created by Hussein Elbeheiry on 10/27/20.
//

import SwiftUI

struct ContentView: View {
    @State var isChecked:Bool = false
    var today = DatePickerView()
    var num_Tasks = tasksData.count
    
    func toggle(){
        isChecked = !isChecked
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("\(today.selectedDate, formatter: today.dateFormatter_Day)")
                        .font(.custom("Avenir", size: 16))
                        .foregroundColor(Color(#colorLiteral(red: 0.3294117647, green: 0.3294117647, blue: 0.3294117647, alpha: 1)))
                    Text("\(today.selectedDate, formatter: today.dateFormatter_Month)")
                        .font(.custom("Avenir", size: 28))
                    Text("\(today.selectedDate, formatter: today.dateFormatter_Year)")
                        .font(.custom("Avenir", size: 24))
                        .foregroundColor(Color(#colorLiteral(red: 0.6862745098, green: 0.6862745098, blue: 0.6862745098, alpha: 1)))
                }
                .frame(width: 147, height: 150)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
                
                Spacer()
                
                VStack {
                    Text("\(num_Tasks)")
                        .font(.custom("Avenir", size: 64))
                        .fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0.1490196078, green: 0.3529411765, blue: 0.5333333333, alpha: 1)))
                    Text("Tasks")
                        .frame(width: 83, height: 32)
                        .background(Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                        .padding(.bottom)
                }
                .frame(width: 147, height: 150)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
            }
            .padding(.top, 92)
            .padding(.leading, 32)
            .padding(.trailing, 32)
            .padding(.bottom, 32)
            
            Spacer()
            
            HStack {
                Text("Pending")
                Text("Completed")
            }
            .padding()
            .padding(.leading)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 34, maxHeight: .infinity, alignment: .leading)
            
            Spacer()
            
            VStack {
                TasksListView()
                    .padding(.all, 16)
            }
            .frame(width: 311, height: 474)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
            
        }.background(Image(uiImage: #imageLiteral(resourceName: "Background")).resizable().edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
