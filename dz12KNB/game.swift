//
//  game.swift
//  dz12KNB
//
//  Created by Кирилл Ерашевич on 7.09.21.
//

import Foundation

class Game {
    
    static var shared: Game = Game()
   
    func resultBot(number: Int)-> String {
        if (number == 0)
        {
        return "kaya"
        }
        if (number == 1)
        {
            return "scissor"
        }
        else {
            return "paper"
        }
}
    func labelResult1(numberGamer: Int, numberBot: Int) -> String {
        if (numberGamer == numberBot)
        {
            return "Ничья"
        }
        if (numberBot == 1)
        {
        return "Вы победили"
        }
        if (numberBot == 2)
        {
            return "Вы проиграли"
        }
        return ""
}
    func labelResult2(numberGamer: Int, numberBot: Int) -> String {
    if (numberGamer == numberBot)
    {
        return "Ничья"
    }
    if (numberBot == 2)
    {
    return "Вы победили"
    }
    if (numberBot == 0)
    {
        return "Вы проиграли"
    }
    return ""
}

    func labelResult3(numberGamer: Int, numberBot: Int) -> String {
    if (numberGamer == numberBot)
    {
        return "Ничья"
    }
    if (numberBot == 0)
    {
    return "Вы победили"
    }
    if (numberBot == 1)
    {
        return "Вы проиграли"
    }
    return ""
}
}
