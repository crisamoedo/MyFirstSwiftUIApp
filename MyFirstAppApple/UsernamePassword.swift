//
//  UsernamePassword.swift
//  MyFirstAppApple
//
//  Created by Cristina Amoedo Fragueiro on 4/10/23.
//

import SwiftUI

struct UsernamePassword: View {
    
    @State var username = ""
    @State var passsword = ""
    @State var currentDate: Date = Date()
    
    
    var body: some View {
        VStack {
            Button("Reservas".uppercased()){}
                
                .padding(.all)
                .background(.blue)
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            
            TextField("Username", text: $username)
            //la siguiente opción es para que nos aparezca el arroba cuando aparece el teclado
                .keyboardType(.emailAddress)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
            //El onChange es el que hace que cada vez que se añade un carácter nuevo a nuestro textfield se llame a este modificador y se guarde el nuevo valor
                .onChange(of: username, perform:  {
                    value in print("New Value \(value)")
            })
            
            SecureField("Password", text: $passsword)
                .keyboardType(.default)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 10)
                .onChange(of: passsword, perform:  {
                    value in print("Password Value \(value)")
                })
            
            Button("Login"){}
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 10)
            Spacer()
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    
        
        
        Form {
            
            //el Date con los 3 puntos hace que solo se pueda seleccionar una fecha futura
            DatePicker("Fecha", selection: $currentDate, in: Date()..., displayedComponents: .date)
            
            Text(currentDate, style: .date)
                .bold()
                
        }
    
      
    }
    
    
    
}


#Preview {
    UsernamePassword()
}
