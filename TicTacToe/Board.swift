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
            path.move(to: CGPoint(x: size * 2.25, y: size * 0.25))
            path.addLine(to: CGPoint(x: size * 2.25, y:size * 6 + size * 0.5) )
            path.move(to: CGPoint(x: size * 4.5, y: size * 0.25))
            path.addLine(to: CGPoint(x: size * 4.5, y:size * 6 + size * 0.5) )
            path.move(to: CGPoint(x: size * 0.25, y: size * 2.25))
            path.addLine(to: CGPoint(x: size * 6 + size * 0.5, y:size * 2.25) )
            path.move(to: CGPoint(x: size * 0.25, y: size * 4.50))
            path.addLine(to: CGPoint(x: size * 6 + size * 0.5, y:size * 4.5) )
        }
    }
    
    
}

struct Board_Previews: PreviewProvider {
    static var previews: some View {
        Board(size: 60)
    }
}
