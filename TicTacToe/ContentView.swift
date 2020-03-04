//
//  ContentView.swift
//  TicTacToe
//
//  Created by David A Cantú Delgado on 03/03/20.
//  Copyright © 2020 Tec de Monterrey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var size: CGFloat = 60
    
    var body: some View {
        ZStack {
            Board(size: size)
            .stroke(style: StrokeStyle(lineWidth: 16, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
