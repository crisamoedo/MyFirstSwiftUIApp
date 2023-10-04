//
//  ContentView2.swift
//  MyFirstAppApple
//
//  Created by Cristina Amoedo Fragueiro on 4/10/23.
//

import SwiftUI

struct ContentView2: View {
    //El State nos permitirá mutar un valor
   @State var counter = 0
    var body: some View {
        VStack {
            Text("Seguidores = \(counter)")
        }
        Button("+") {
            counter += 1
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(.black)
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .foregroundColor(.white)
        
    }
}


#Preview {
    ContentView2()
}
