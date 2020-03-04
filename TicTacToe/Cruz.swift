//
//  Cruz.swift
//  TicTacToe
//
//  Created by David A Cantú Delgado on 03/03/20.
//  Copyright © 2020 Tec de Monterrey. All rights reserved.
//

import SwiftUI

struct Cruz: Shape {
    
    var size: CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: size, y: size))
            var transform = CGAffineTransform(translationX: size, y: 0)
            transform = transform.scaledBy(x: -1, y: 1)
            path.addPath(path, transform: transform)
        }
    }

}

struct Cruz_Previews: PreviewProvider {
    static var previews: some View {
        Cruz(size: 60)
    }
}
