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
    @State var isOn = false
    
    
    var body: some View {
        VStack {
            Button("Página de  reservas".uppercased()){}
                .padding(.horizontal)
                .background(.blue)
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            //USANDO TEXTFIELD
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
            
            //USANDO SECUREFIELD PARA CONTRASEÑAS
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
        
        
        VStack {
            Form {
                
                //USANDO DATEPICKER PARA HACER USO DEL CALENDARIO
                //el Date con los 3 puntos hace que solo se pueda seleccionar una fecha futura
                DatePicker("Fecha", selection: $currentDate, in: Date()..., displayedComponents: .date)
                
                Text(currentDate, style: .date)
                    .bold()
                    
            }
            
            Form{
                
                //USANDO TOGGLE
                Toggle("Tengo un descuento", isOn: $isOn)
                //Text("\(isOn.description)")
                //Aparecería debajo del toogle si está a true o false
                   
            }
            
           
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
        
        
    
      
    }
    
    
    
}


#Preview {
    UsernamePassword()
}
