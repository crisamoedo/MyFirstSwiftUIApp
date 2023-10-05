//
//  LazyGrid.swift
//  MyFirstAppApple
//
//  Created by Cristina Amoedo Fragueiro on 5/10/23.
//

import SwiftUI

struct LazyGrid: View {
    var body: some View {
        
        //USANDO LAZYVGRID Y SCROLLVIEW
        //SCROLLVIEW NOS PERMITE HACER SCROLL Y VA CARGANDO A MEDIDA QUE NOS DESPLAZAMOS
        var elements = 1...500
        let gridItems = [GridItem(.fixed(100)),                          GridItem(.fixed(100)),
                         GridItem(.fixed(100))]
        
        ScrollView{
            LazyVGrid(columns: gridItems, content: {
                ForEach(elements, id: \.self){ element in
                    VStack {
                        Circle()
                            .frame(height: 40)
                        
                        Text("\(element)")
                    }
                }
            })
        }
        
        
    }
}
//si quisiéramos hacer un scroolview horizontal tendríamos que cambiar las columns por rows y en el scrollview especificar que el scroll va a ser horizontal (.horizontal) ya que por defecto es vertical

#Preview {
    LazyGrid()
}
