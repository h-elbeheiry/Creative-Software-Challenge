//
//  CheckView.swift
//  Figma Task App
//
//  Created by Hussein Elbeheiry on 10/28/20.
//

import SwiftUI

struct CheckView: View {
    @State var isChecked:Bool = false
    
    func toggle(){
        isChecked = !isChecked
    }
    
    var body: some View {
        Button(action: toggle){
            Image(systemName: isChecked ? "checkmark.square": "square")
        }.foregroundColor(.black)
    }
}
