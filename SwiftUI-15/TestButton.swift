//
//  TestButton.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI



struct TestButton: View {
    
    @State private var titleButton = "START"
    @Binding var light: Light
    
    var body: some View {
        Button(
            action: {
                titleButton = "NEXT"
                

            },
            label: { Text(titleButton).font(.title) }
        )
    }
}

struct TestButton_Previews: PreviewProvider {
    @State static var lightPrev: Light = .no
    static var previews: some View {
        TestButton(light: $lightPrev)
    }
}
