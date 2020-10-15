//
//  CircleLight.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI

struct CircleLight: View {
    
    let color: UIColor
    
    var body: some View {
        Color(color)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 3)) //обводка
//            .shadow(radius: 10)
        
    }
}

struct CircleLights_Previews: PreviewProvider {
    static var previews: some View {
        CircleLight(color: .red)
    }
}
