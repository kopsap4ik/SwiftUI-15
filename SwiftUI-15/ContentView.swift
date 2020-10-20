//
//  ContentView.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI

enum Light { case no, red, yellow, green }

struct ContentView: View {
    
    @State private var opacityRed = 0.4
    @State private var opacityYellow = 0.4
    @State private var opacityGreen = 0.4
    
    @State private var curentLihgt: Light = .no
    
    @State private var titleButton = "START"
    
    
    // MARK:  - View
    var body: some View {
        
        ZStack{
            Color(.black)
                .edgesIgnoringSafeArea(.all) // заливка черным
            VStack{
                CircleLight(color: .red, opacity: opacityRed)
                CircleLight(color: .yellow, opacity: opacityYellow)
                CircleLight(color: .green, opacity: opacityGreen)
                
                Spacer()
                
                StartButton(titleButton: titleButton){
                    if titleButton == "START" { titleButton = "NEXT" }
                    nextLight()
                }
            }
            .padding(.vertical, 50)
        }
    }
    
    // MARK:  - functions
    
    private func nextLight() {
        switch curentLihgt {
        case .no:
            curentLihgt = .red
            opacityRed = 1.0
        case .red:
            curentLihgt = .yellow
            opacityRed = 0.4
            opacityYellow = 1.0
        case .yellow:
            curentLihgt = .green
            opacityYellow = 0.4
            opacityGreen = 1.0
        case .green:
            curentLihgt = .red
            opacityGreen = 0.4
            opacityRed = 1.0
        }
    }
}

// MARK:  - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
