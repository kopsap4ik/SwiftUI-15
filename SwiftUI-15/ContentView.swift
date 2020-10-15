//
//  ContentView.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(content: {
            CircleLight(color: .red)
            CircleLight(color: .yellow)
            CircleLight(color: .green)
            Spacer()
            StartButton()
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
