//
//  Board.swift
//  TicTacToe
//
//  Created by David A Cantú Delgado on 03/03/20.
//  Copyright © 2020 Tec de Monterrey. All rights reserved.
//

import SwiftUI

struct Board: Shape {
    
    var size: CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            let cuadro = (size-32) / 3
            print(cuadro)
            path.move(to: CGPoint(x: cuadro, y: 0))
            path.addLine(to: CGPoint(x: cuadro, y: cuadro * 3))
            path.move(to: CGPoint(x: cuadro * 2, y: 0))
            path.addLine(to: CGPoint(x: cuadro * 2, y: cuadro * 3))
            path.move(to: CGPoint(x: 0, y: cuadro))
            path.addLine(to: CGPoint(x: cuadro * 3, y:cuadro))
            path.move(to: CGPoint(x: 0, y: cuadro * 2))
            path.addLine(to: CGPoint(x: cuadro * 3, y:cuadro * 2))
        }
    }
    
    
}

struct Board_Previews: PreviewProvider {
    static var previews: some View {
        Board(size: 60)
    }
}
