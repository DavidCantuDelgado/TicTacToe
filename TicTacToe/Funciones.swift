//
//  Funciones.swift
//  TicTacToe
//
//  Created by David A Cantú Delgado on 03/03/20.
//  Copyright © 2020 Tec de Monterrey. All rights reserved.
//

import Foundation
import SwiftUI

func ColorShape(turno: Int) -> Color {
    var jugador: Int
    if turno == 0 {
        jugador = 0
    } else {
        if turno % 2 == 0 {
            jugador = 2
        } else {
            jugador = 1
        }
    }
    switch jugador {
    case 0:
        return Color.clear
    case 1:
        return Color("Turno1")
    case 2:
        return Color("Turno2")
    default:
        return Color.clear
    }
}

func Turno(turno: Int, valor: Int) -> Int {
    if turno % 2 == 0 {
        return  2
    } else {
        return 1
    }
}

func HayGanador(tictactoe: [[Int]]) -> Bool {
    
    if tictactoe[0][0] == tictactoe[0][1] && tictactoe[0][0] == tictactoe[0][2] && tictactoe[0][0] + tictactoe[0][1] + tictactoe[0][2] > 0 {
        return true
    } else {
        if tictactoe[1][0] == tictactoe[1][1] && tictactoe[1][0] == tictactoe[1][2] && tictactoe[1][0] + tictactoe[1][1] + tictactoe[1][2] > 0 {
            return true
        } else {
            if tictactoe[2][0] == tictactoe[2][1] && tictactoe[2][0] == tictactoe[2][2] && tictactoe[2][0] + tictactoe[2][1] + tictactoe[2][2] > 0 {
                return true
            } else {
                if tictactoe[0][0] == tictactoe[1][0] && tictactoe[0][0] == tictactoe[2][0] && tictactoe[0][0] + tictactoe[1][0] + tictactoe[2][0] > 0 {
                    return true
                } else {
                    if tictactoe[0][1] == tictactoe[1][1] && tictactoe[0][1] == tictactoe[2][1] && tictactoe[0][1] + tictactoe[1][1] + tictactoe[2][1] > 0 {
                        return true
                    } else {
                        if tictactoe[0][2] == tictactoe[1][2] && tictactoe[0][2] == tictactoe[2][2] && tictactoe[0][2] + tictactoe[1][2] + tictactoe[2][2] > 0 {
                            return true
                        } else {
                            if tictactoe[0][0] == tictactoe[1][1] && tictactoe[0][0] == tictactoe[2][2] && tictactoe[0][0] + tictactoe[1][1] + tictactoe[2][2] > 0 {
                                return true
                            } else {
                                if tictactoe[0][2] == tictactoe[1][1] && tictactoe[0][2] == tictactoe[2][0] && tictactoe[0][2] + tictactoe[1][1] + tictactoe[2][0] > 0 {
                                    return true
                                } else {
                                    return false
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

