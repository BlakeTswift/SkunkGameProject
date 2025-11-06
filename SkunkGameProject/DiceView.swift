//
//  DiceView.swift
//  SkunkGameProject
//
//  Created by Trytten, Blake - Student on 10/29/25.
//

import SwiftUI

struct DiceView: View {
    @Binding var numberOfDice1: Int
    @Binding var numberOfDice2: Int
    @Binding var turn: Int
    @Binding var Winner: Bool
    
    @Binding var playerScore: [Int]
    @Binding var numOfPlayers: Int
    
    @State var turnScore: Int = 0
    @State var newestRoll: Int = 0
    
    //add a recent score to add to the total
    var body: some View {
        Text("\(playerScore)")
            .font(.system(size: 100, weight: .bold, design: .default))
        VStack {
            Text("+\(turnScore)")
            HStack {
                Image(systemName: "die.face.\(numberOfDice1).fill")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(.black,.white)
                Image(systemName: "die.face.\(numberOfDice2).fill")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(.black,.white)
            }
            Button("Save") {
                if turn == numOfPlayers - 1 {
                    playerScore[turn] += turnScore
                    turn = 0
                    turnScore = 0
                } else {
                    playerScore[turn] += turnScore
                    turn += 1
                    turnScore = 0
                }
                
            }
            .buttonStyle(.bordered)
            
            Button("Roll") {
                if playerScore[turn] >= 100 {
                    Winner = true
                    print("player \(turn) has won")
                }
                else {
                    numberOfDice1 = (Int.random(in: 1...6))
                    numberOfDice2 = (Int.random(in: 1...6))
                    
                    newestRoll = numberOfDice1 + numberOfDice2
                    
                    
                    if (numberOfDice1 == 1) && numberOfDice2 == 1{
                        playerScore[turn] = 0
                    }
                    else if (numberOfDice1 == 1) || numberOfDice2 == 1 {
                        turnScore = 0
                        if turn == numOfPlayers - 1 {
                            turn = 0
                        } else {
                            turn += 1 }
                    }
                    
                    else {
                        turnScore += newestRoll
                    }
                }
                
                
            }
            .buttonStyle(.bordered)
        }
        
    }
}

#Preview {
    @Previewable @State var playerScore: [Int] = [0,0]
    @Previewable @State var numberOfDice1: Int = 1
    @Previewable @State var numberOfDice2: Int = 1
    @Previewable @State var turn: Int = 0
    @Previewable @State var numOfPlayers: Int = 2
    @Previewable @State var Winner: Bool = false
    
    DiceView(numberOfDice1: $numberOfDice1, numberOfDice2: $numberOfDice2, turn: $turn, Winner: $Winner, playerScore: $playerScore, numOfPlayers: $numOfPlayers)
}
