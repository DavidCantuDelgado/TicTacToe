//
//  Forma.swift
//  TicTacToe
//
//  Created by David A Cantú Delgado on 03/03/20.
//  Copyright © 2020 Tec de Monterrey. All rights reserved.
//

import SwiftUI

struct Forma: Shape {
    var size: CGFloat
    var jugador: Int
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        if (jugador == 0 || jugador == 2) {
            path.addEllipse(in: CGRect(x: 0, y: 0, width: size, height: size))
        } else {
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: size, y: size))
            var transform = CGAffineTransform(translationX: size, y: 0)
            transform = transform.scaledBy(x: -1, y: 1)
            path.addPath(path, transform: transform)
        }
        return path
    }
    
}

struct Forma_Previews: PreviewProvider {
    static var previews: some View {
        Forma(size: 60, jugador: 0)
    }
}
