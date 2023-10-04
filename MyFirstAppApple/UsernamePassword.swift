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
    
    var body: some View {
        VStack {
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
        }
        
        SecureField("Password", text: $passsword)
            .keyboardType(.default)
            .padding(8)
            .font(.headline)
            .background(Color.gray.opacity(0.3))
            .cornerRadius(6)
            .padding(.horizontal, 60)
            .padding(.top, 40)
            .onChange(of: passsword, perform:  {
                value in print("Password Value \(value)")
            })
        Spacer()
    }
}


#Preview {
    UsernamePassword()
}
