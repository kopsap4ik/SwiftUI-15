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
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.vertical, 3.0)
                .padding(.horizontal, 15.0)
//                .background(Color(.blue))
                .background(BackgroundButton())
                .clipShape(RoundedRectangle(cornerRadius: 50.0))
                .overlay( //обводка
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.yellow, lineWidth: 1.5)
                )
        }
    }
}

//struct BtnStyle: ButtonStyle {
//    func setupButton(con) -> <#return type#> {
//        <#function body#>
//    }
//}

struct BackgroundButton: View {
    var body: some View {
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.orange]),
                startPoint: .leading, endPoint: .trailing)
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
    }
}
