//
//  DatePickerView.swift
//  Figma Task App
//
//  Created by Hussein Elbeheiry on 10/29/20.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectedDate = Date()
    
    //Return Month and Year
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    //Return Day
    var dateFormatter_Day: DateFormatter {
        let formatter_Day = DateFormatter()
        formatter_Day.dateFormat = "EEEE"
        return formatter_Day
    }
    
    //Return Month
    var dateFormatter_Month: DateFormatter {
        let formatter_Month = DateFormatter()
        formatter_Month.dateFormat = "MMM, dd"
        return formatter_Month
    }
    
    //Return Month & Hour
    var dateFormatter_Month_hour: DateFormatter {
        let formatter_Month_hour = DateFormatter()
        formatter_Month_hour.dateFormat = "MMM, dd, HH:mm"
        return formatter_Month_hour
    }
    
    //Return Year
    var dateFormatter_Year: DateFormatter {
        let formatter_Year = DateFormatter()
        formatter_Year.dateFormat = "yyyy"
        return formatter_Year
    }
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                
                Button(action: {
                    print("Cancel")
                }) {
                    Image(uiImage: #imageLiteral(resourceName: "Cancel Icon-1"))
                }
                .padding()
            }
            HStack {
                DatePicker("", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(WheelDatePickerStyle())
            }
            HStack {
                Button(action: {
                    print("Save")
                    
                }) {
                    Text("Save")
                        .font(.custom("Avenir", size: 14))
                        .foregroundColor(.black)
                }
            }
            .padding(.bottom)
        }
        .frame(width: 350, height: 320)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 3)
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
