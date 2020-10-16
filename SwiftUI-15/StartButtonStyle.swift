//
//  StartButtonStyle.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI

// MARK:  - Style for Button
struct StartButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: 150)
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(.vertical, 10.0)
            .padding(.horizontal, 15.0)
            .background(BackgroundButton())
//            .clipShape(RoundedRectangle(cornerRadius: 50.0)) //обрезать по фигуре
            .cornerRadius(50.0)
            .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.yellow, lineWidth: 1.5)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0) //прыгает при нажатии
//            .background(configuration.isPressed ? Color.orange : Color.yellow) //смена фона при нажатии
        )
    }
}

struct BackgroundButton: View {
    var body: some View {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.orange]),
                startPoint: .leading, endPoint: .trailing)
    }
}

//struct StartButton: View {
//    
//    @State private var titleButton = "START" 
//    
//    var body: some View {   
//        Button(action: {
//            titleButton = "NEXT"
//        }) {
//            Text(titleButton)
//        }.buttonStyle(StartButtonStyle())
//    }
//}



//struct StartButton_Previews: PreviewProvider {
//    static var previews: some View {
////        StartButton()
//    }
//}
