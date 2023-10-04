//
//  ContentView.swift
//  MyFirstAppApple
//
//  Created by Cristina Amoedo Fragueiro on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    
    //El State nos permitirá mutar un valor
    @State var counter = 0
    
    var body: some View {
        Image("icons-github")
            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
        //el renderingMode nos permite modificar nuestra imagen, el color de fondo por ejemplo
            .foregroundColor(.black)
            .padding(80)
            //El spacer hace que se sitúe arriba de todo de su espacio
            Spacer()
            
            
        
        VStack(alignment: .center) {
            
            VStack(alignment: .leading, spacing: 10.0) {
                Text("GitHub")
                    .font(.largeTitle)
                    .underline()
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
                        Text("Desarrollador de apps iOS")
                            .foregroundStyle(.gray)
                        Text("crisamoedo")
                            .foregroundStyle(.gray)
                    }
                }
                HStack(spacing: -7.0) {
                    
                    //estos iconos los tenemos en sfsymbols
                    Image(systemName: "hand.thumbsup")
                        .frame(width: 50, height: 50)
                    Image(systemName: "hand.thumbsdown")
                        .frame(width: 50, height: 50)
                    Image(systemName: "bell")
                        .frame(width: 50, height: 50)
                }
                
                HStack {
                    Button("Suscríbete".uppercased()) {
                        counter += 1
                        
                    }
                    .padding(.all)
                    .background(.blue)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
                    
                    Text("( \(counter) )")
                        .foregroundColor(counter <= 10 ? .black : .red)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                
            }
            
            Spacer()
        }
        Text(Date(), style: .date)
            .padding(.all)
        
        //Si quisuéramos poner un contador sería igual pero cambiando el .date por .timer o la hora con .time
        
    }
    
}







#Preview {
    ContentView()
}
