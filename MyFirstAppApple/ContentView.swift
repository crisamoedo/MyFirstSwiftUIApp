//
//  ContentView.swift
//  MyFirstAppApple
//
//  Created by Cristina Amoedo Fragueiro on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            VStack(alignment: .leading, spacing: 10.0) {
                Text("Follow me")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                
                Text("CANAL RECOMENDADO")
                    .foregroundStyle(.gray)
                
                HStack {
                    Rectangle()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame( width: 120, height : 80)
                          
                    VStack (alignment: .leading){
                        HStack {
                            Circle()
                                .foregroundColor(.indigo)
                                .frame(width: 18, height: 18)
                                
                            Text("Username")
                                .font(.headline)
                        }
                        Text("Dearrollador de apps iOS")
                            .foregroundStyle(.gray)
                        Text("En prácticas")
                            .foregroundStyle(.gray)
                          }
            }
          
            }
        }
        
        Image(systemName: "globe")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            .imageScale(.medium)
            .foregroundStyle(.tint)
                
        
        
        
        
    }
}

#Preview {
    ContentView()
}
