//
//  ContentView.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI


struct ContentView: View {
    
    @State private var opacityRed = 0.4
    @State private var opacityYellow = 0.4
    @State private var opacityGreen = 0.4
    
    enum Light { case no, red, yellow, green }
    @State private var curentLihgt: Light = .no
    
    @State private var titleButton = "START"
    
    // MARK:  - View
    var body: some View {
        
        VStack(content: {
            CircleLight(color: .red, opacity: opacityRed)
            CircleLight(color: .yellow, opacity: opacityYellow)
            CircleLight(color: .green, opacity: opacityGreen)

            Spacer()
            
            Button(action: {
                titleButton = "NEXT"
                nextLight()
            }) {
                Text(titleButton)
            }.buttonStyle(StartButtonStyle())
            
            
        })
        .padding(.vertical, 100)
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity
        )
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        
    }
    
    // MARK:  - functions
    
    private func nextLight() {
        switch curentLihgt {
        case .no:
            self.curentLihgt = .red
            opacityRed = 1.0
        case .red:
            self.curentLihgt = .yellow
            opacityRed = 0.4
            opacityYellow = 1.0
        case .yellow:
            self.curentLihgt = .green
            opacityYellow = 0.4
            opacityGreen = 1.0
        case .green:
            self.curentLihgt = .red
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
