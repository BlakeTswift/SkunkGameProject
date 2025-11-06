//
//  GameView.swift
//  SkunkGameProject
//
//  Created by Trytten, Blake - Student on 11/5/25.
//

import SwiftUI

struct GameView: View {
    @Binding var numberOfDice1: Int
    @Binding var numberOfDice2: Int
    @Binding var turn: Int
    @Binding var Winner: Bool
    
    @Binding var playerScore: [Int]
    @Binding var numOfPlayers: Int
    var body: some View {
        
        ZStack {
            if numOfPlayers == 2 {
                Rectangle()
                    .frame(width: 300, height: 550)
                    .foregroundStyle(.twopYellow)
                if Winner == true {
                    Text("Player \(turn + 1) Wins!")
                        .font(.largeTitle.lowercaseSmallCaps())
                        .foregroundStyle(.white)
                }
                else {
                    VStack {
                        
                        
                        DiceView(numberOfDice1: $numberOfDice1, numberOfDice2: $numberOfDice2, turn: $turn, Winner: $Winner, playerScore: $playerScore, numOfPlayers: $numOfPlayers)
                            .font(.largeTitle.lowercaseSmallCaps())
                            .foregroundStyle(.white)
                    }
                    .rotationEffect(Angle(degrees:Double(rotateView(numOfPlayers: numOfPlayers, turn: turn))))
                    
                    
                }
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .offset(x: 300)
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .rotationEffect(Angle(degrees: 180))
                .offset(x: -300)
                
            }
            else if numOfPlayers == 3 {
                Triangle()
                    .offset(y: -60)
                    .frame(width: 600, height: 600)
                    .foregroundStyle(.threepOrange)
                
                if Winner == true {
                    Text("Player \(turn + 1) Wins!")
                        .font(.largeTitle.lowercaseSmallCaps())
                        .foregroundStyle(.white)
                }
                else {
                    VStack {
                        
                        
                        DiceView(numberOfDice1: $numberOfDice1, numberOfDice2: $numberOfDice2, turn: $turn, Winner: $Winner, playerScore: $playerScore, numOfPlayers: $numOfPlayers)
                            .font(.largeTitle.lowercaseSmallCaps())
                            .foregroundStyle(.white)
                    }
                    .rotationEffect(Angle(degrees:Double(rotateView(numOfPlayers: numOfPlayers, turn: turn))))
                    
                    
                    
                }
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .offset(y: 350)
                
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .rotationEffect(Angle(degrees: 110))
                .offset(x: -300)
                
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .rotationEffect(Angle(degrees: -110))
                .offset(x: 300)
                
                
            }
            else if numOfPlayers == 4 {
                Rectangle()
                    .frame(width: 450, height: 550)
                    .foregroundStyle(.fourpRed)
                
                if Winner == true {
                    Text("Player \(turn + 1) Wins!")
                        .font(.largeTitle.lowercaseSmallCaps())
                        .foregroundStyle(.white)
                }
                else {
                    VStack {
                        
                        
                        DiceView(numberOfDice1: $numberOfDice1, numberOfDice2: $numberOfDice2, turn: $turn, Winner: $Winner, playerScore: $playerScore, numOfPlayers: $numOfPlayers)
                            .font(.largeTitle.lowercaseSmallCaps())
                            .foregroundStyle(.white)
                    }
                    .rotationEffect(Angle(degrees:Double(rotateView(numOfPlayers: numOfPlayers, turn: turn))))
                    
                    
                    
                }
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .offset(y: 360)
                
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .rotationEffect(Angle(degrees: 90))
                .offset(x: -310)
                
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .rotationEffect(Angle(degrees: -90))
                .offset(x: 310)
                
                VStack {
                    ForEach(0..<numOfPlayers) { player in
                        Text("Player \(player + 1) Score: \(playerScore[player])")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    
                    Text("Player \(turn + 1)'s Turn")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    
                }
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -360)
            }

        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
        
    }
}
// make a rotation func to spin the view 
func rotateView(numOfPlayers: Int,turn: Int) -> Int {
    if numOfPlayers == 2 {
        if turn == 0 {
            return 0
        }else if turn == 1 {
            return 180
        }
    }
    if numOfPlayers == 3 {
        if turn == 0 {
            return 0
        }
        else if turn == 1 {
            return 110
        }
        else if turn == 2 {
            return -110
        }
        
    }
    if numOfPlayers == 4 {
        if turn == 0 {
            return 0
        }
        else if turn == 1 {
            return 90
        }
        else if turn == 2 {
            return 180
        }
        else if turn == 3 {
            return -90
        }
        
    }
    return 0
}


struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
}
#Preview {
    @Previewable @State var playerScore: [Int] = [0,0,0,0]
    @Previewable @State var numberOfDice1: Int = 1
    @Previewable @State var numberOfDice2: Int = 1
    @Previewable @State var turn: Int = 0
    @Previewable @State var numOfPlayers: Int = 4
    @Previewable @State var Winner: Bool = false
    GameView(numberOfDice1: $numberOfDice1, numberOfDice2: $numberOfDice2, turn: $turn, Winner: $Winner, playerScore: $playerScore, numOfPlayers: $numOfPlayers)
}
