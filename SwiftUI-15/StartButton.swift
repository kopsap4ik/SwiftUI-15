//
//  StartButton.swift
//  SwiftUI-15
//
//  Created by Василий Петухов on 15.10.2020.
//

import SwiftUI

struct StartButton: View {
    
    @State private var titleButton = "START"
    
    var body: some View {   
        Button(action: {
            titleButton = "NEXT"
        }) {
            Text(titleButton)
                .font(.title)
                .foregroundColor(.white)
                .padding(.vertical, 3.0)
                .padding(.horizontal, 15.0)
                .background(Color(.blue))
                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                .overlay( //обводка
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.blue, lineWidth: 3)
                )
        }
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
    }
}
