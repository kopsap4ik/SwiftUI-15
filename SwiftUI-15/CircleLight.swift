//
//  CircleLight.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI

struct CircleLight: View {
    
    let color: UIColor
    var opacity: Double
    
    var radiusShadow: Double {
        var radius = 0.0
        
        if opacity == 1 {
            radius = 10.0
        }
        return radius
    }
    
    var body: some View {
        Color(color)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .opacity(opacity)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 3)) //обводка
            .shadow(color: Color(color), radius: CGFloat(radiusShadow))
    }
}

// MARK:  - Preview

struct CircleLights_Previews: PreviewProvider {
//    @State static var opacityPrev = 0.4 // 2 вариант - обявление переменной для @Binding
    
    static var previews: some View {
        CircleLight(color: .cyan, opacity: 0.4)
//        CircleLight(color: .cyan, opacity: .constant(0.4)) //  1 вариант - достаточно этой строки для @Binding
//        CircleLight(color: .cyan, opacity: $opacityPrev) // 2 вариант - использование переменной для @Binding
        
    }
}
