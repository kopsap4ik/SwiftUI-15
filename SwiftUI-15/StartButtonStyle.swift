//
//  StartButtonStyle.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI

struct StartButton: View {
    
    var titleButton: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(titleButton)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }.buttonStyle(StartButtonStyle())
    }
}

struct BackgroundButton: View {
    var body: some View {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.orange]),
                startPoint: .leading, endPoint: .trailing)
    }
}

// MARK:  - Style for Button
struct StartButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: 100)
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(.vertical, 10.0)
            .padding(.horizontal, 15.0)
            .background(BackgroundButton())
            .cornerRadius(50.0)
            .overlay(RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.yellow, lineWidth: 1.5)
                        .scaleEffect(configuration.isPressed ? 1.3 : 1.0) //обводка прыгает по тапу
//                        .background(configuration.isPressed ? Color.orange : Color.yellow) //смена фона по тапу
            )
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(titleButton: "START", action: {})
    }
}
