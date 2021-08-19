//
//  ControlFlow.swift
//  Swift Basics
//
//  Created by Herock Hasan on 18/8/21.
//

import Foundation

class ControlFlow {
    
    func forloopIntro()
    {
        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names {
            print("Hello, \(name)!")
        }
        
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        let minutes = 60
        for tickMark in 0..<minutes {
            print("\(tickMark) Min")

            // render the tick mark each minute (60 times)
        }

    }
    
    /*
     A while loop performs a set of statements until a condition becomes false. These kinds of loops are best used when the number of iterations isn’t known before the first iteration begins. Swift provides two kinds of while loops:
     */
    
    func whileLoopIntro()
    {
        let finalSquare = 25
       
        var board = [Int](repeating: 0, count: finalSquare + 1)
        
        var square = 0
        var diceRoll = 0
        while square < finalSquare {
            // roll the dice
            diceRoll += 1
            if diceRoll == 7 { diceRoll = 1 }
            // move by the rolled amount
            square += diceRoll
            if square < board.count {
                // if we're still on the board, move up or down for a snake or a ladder
                square += board[square]
            }
        }
        print("Game over!")

    }
    
    /*
     Repeat-While

     The other variation of the while loop, known as the repeat-while loop, performs a single pass through the loop block first, before considering the loop’s condition. It then continues to repeat the loop until the condition is false.
     */
    
    func repeatWhile()  {
        
        let finalSquare = 25
        var board = [Int](repeating: 0, count: finalSquare + 1)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        var square = 0
        var diceRoll = 0

        repeat {
            // move up or down for a snake or ladder
            square += board[square]
            // roll the dice
            diceRoll += 1
            if diceRoll == 7 { diceRoll = 1 }
            // move by the rolled amount
            square += diceRoll
        } while square < finalSquare
        
        print("Game over!")

    }
}
