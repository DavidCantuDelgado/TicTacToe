//
//  Circulo.swift
//  TicTacToe
//
//  Created by David A Cantú Delgado on 03/03/20.
//  Copyright © 2020 Tec de Monterrey. All rights reserved.
//

import SwiftUI

struct Circulo: Shape {
    
    var size: CGFloat
   
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.addEllipse(in: CGRect(x: 0, y: 0, width: size, height: size))
        }
    }
}


struct Circulo_Previews: PreviewProvider {
    static var previews: some View {
        Circulo(size: 60)
    }
}
