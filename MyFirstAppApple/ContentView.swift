//
//  ContentView.swift
//  MyFirstAppApple
//
//  Created by Cristina Amoedo Fragueiro on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack(alignment: .center) {
            Image("icons-github")
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            //el renderingMode nos permite modificar nuestra imagen, el color de fondo por ejemeplo
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .padding(80)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading, spacing: 10.0) {
                Text("GitHub")
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
                                .foregroundColor(.blue)
                                .frame(width: 18, height: 18)
                                
                            Text("Cristina Amoedo")
                                .font(.headline)
                        }
                        Text("Dearrollador de apps iOS")
                            .foregroundStyle(.gray)
                        Text("crisamoedo")
                            .foregroundStyle(.gray)
                          }
            }
                HStack(spacing: -7.0) {
                    Image(systemName: "hand.thumbsup")
                    //estos iconos los tenemos en sfsymbols
                        
                        .frame(width: 50, height: 50)
                    Image(systemName: "hand.thumbsdown")
                        .frame(width: 50, height: 50)
                    Image(systemName: "bell")
                        .frame(width: 50, height: 50)
                }
            }
        }
        
    
                
        
        
        
        
    }
}

#Preview {
    ContentView()
}
