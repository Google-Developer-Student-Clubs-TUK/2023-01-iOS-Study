//
//  ContentView.swift
//  StackFrame
//
//  Created by 이정동 on 2023/05/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        GeometryReader { geometry in
            VStack {
                Text("Hello World, How are you?")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width / 2, height: (geometry.size.height  / 4))
                    .border(.black)
                Text("Goodbye World")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width / 3, height: geometry.size.height / 4)
                    .border(.black)
                HStack {
                    Image(systemName: "airplane")
                    Text("Flight times:")
                        .layoutPriority(1)
                    Text("London")
                        .layoutPriority(2)
                }
                .padding(50)
                .font(.largeTitle)
                .lineLimit(1)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
