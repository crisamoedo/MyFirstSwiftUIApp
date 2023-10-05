//
//  ListaCompra.swift
//  MyFirstAppApple
//
//  Created by Cristina Amoedo Fragueiro on 5/10/23.
//

import SwiftUI

struct ListaCompra: View {
    
    @State var iPhoneCounter = 0
    @State var iPadCounter = 0
    @State var macCounter = 0
    
    @State var isNetworkOn = true
    @State var date : Date = Date()
    @State var color : Color = .blue
    
    
    var body: some View {
        VStack {
            
            //USANDO FORM CON SECTIONS
            Form{
                
                Section(header: Text("Dispositivos")){
                    
                    //USANDO STEPPER (BOTONES PARA AUMENTAR O DECREMENTAR)
                    Stepper("iPhone \(iPhoneCounter)", value:
                                $iPhoneCounter,
                            in: 0...5)
                    Stepper("iPad \(iPadCounter)", value:
                                $iPadCounter,
                            in: 0...5)
                    Stepper("Mac \(macCounter)", value:
                                $macCounter,
                            in: 0...5)
                }
                
                Section(header: Text("Conexión"),
                        footer:
                            HStack{
                    Spacer()
                    Label("version 1.0", systemImage: "iphone")
                    Spacer()
                }
                ){
                    Toggle("Wi-fi", isOn: $isNetworkOn)
                    DatePicker("Date", selection: $date)
                    ColorPicker("Color", selection: $color )
                    
                }
            }
            .padding(.trailing)
            
        }
    }
}

#Preview {
    ListaCompra()
}

