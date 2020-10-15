//
//  CircleLight.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI

struct CircleLight: View {
    
    let color: UIColor
//    @Binding var opacity: Double
    var opacity: Double
    
    var body: some View {
        Color(color)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .opacity(opacity)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 3)) //обводка
//            .shadow(radius: 10)
    }
}

enum Light { case no, red, yellow, green }

struct CircleLights_Previews: PreviewProvider {
    @State static var opacityPrev = 0.4 // 2 вариант - обявление переменной для @Binding
    
    static var previews: some View {
        CircleLight(color: .cyan, opacity: 0.4)
//        CircleLight(color: .cyan, opacity: .constant(0.4)) //  1 вариант - достаточно этой строки для @Binding
//        CircleLight(color: .cyan, opacity: $opacityPrev) // 2 вариант - использование переменной для @Binding
        
    }
}
