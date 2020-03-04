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
    @State var turno: Int = 0
    @State var tictactoe = [[0,0,0],[0,0,0],[0,0,0]]
    @State var ganador = false
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Color("Fondo")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Text("Tic-Tac-Toe")
                            .font(.custom("Lemonada", size: 40))
                            .foregroundColor(Color("Turno1"))
                            .padding(10)
                    }
                    ZStack {
                        Board(size: self.size)
                            .stroke(style: StrokeStyle(lineWidth: 16, lineCap: .round, lineJoin: .round))
                            .foregroundColor(Color("Tablero"))
                        
                        VStack {
                            
                            ForEach (0..<self.tictactoe.count) { reng in
                                HStack {
                                    ForEach (0..<self.tictactoe[reng].count) { col in
                                        Button(action: {
                                            if self.tictactoe[reng][col] == 0 {
                                                self.turno += 1
                                                self.tictactoe[reng][col] = Turno(turno: self.turno, valor: self.tictactoe[reng][col])
                                                self.ganador = HayGanador(tictactoe: self.tictactoe)
                                                print(self.turno)
                                            }
                                            
                                        }) {
                                            Forma(size: self.size, jugador: self.tictactoe[reng][col])
                                                .stroke(style: StrokeStyle(lineWidth: 16, lineCap: .round, lineJoin: .round))
                                                .foregroundColor(ColorShape(turno: self.tictactoe[reng][col]))
                                                .padding(self.size/2)
                                        }
                                        
                                    }
                                }
                                .frame(height: self.size * 2.25)
                                
                            }
                            Spacer()
                        }
                        if self.ganador {
                            VStack {
                                Image("ganador")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width)
                                    
                                    .colorMultiply(ColorShape(turno: self.turno))
                                Spacer()
                                
                            }
                        }
                    }
                    HStack {
                        Button(action: {
                            self.tictactoe = [[0,0,0],[0,0,0],[0,0,0]]
                            self.ganador = false
                            self.turno = 0
                        }) {
                            Text("Reiniciar")
                                .font(.custom("Curgette", size: 32))
                                .padding(20)
                                .foregroundColor(Color("Fondo"))
                                .background(Color("Turno1"))
                                .cornerRadius(20)
                                .shadow(radius: 6)
                            
                        }
                    .padding()
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
