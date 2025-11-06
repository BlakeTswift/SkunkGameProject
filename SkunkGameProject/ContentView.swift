//
//  ContentView.swift
//  SkunkGameProject
//
//  Created by Trytten, Blake - Student on 10/29/25.
//

import SwiftUI

struct ContentView: View {
    @State var numOfPlayers: Int = 2
    @State var playerScore: [Int] = []
    
    @State var numberOfDice1: Int = 1
    @State var numberOfDice2: Int = 1
    @State var turn: Int = 0
    @State var Winner: Bool = false
    @State var start: Bool = false
    var body: some View {
        NavigationStack {
            NavigationLink(
                destination: GameView(numberOfDice1: $numberOfDice1, numberOfDice2: $numberOfDice2, turn: $turn, Winner: $Winner, playerScore: $playerScore, numOfPlayers: $numOfPlayers).navigationBarBackButtonHidden(true),isActive: $start

                
            ) {
                EmptyView()
            }
            .hidden()
        ZStack{
            
                
                
                NavigationLink(destination: InfoView().navigationBarBackButtonHidden(true))
            {
                    Image(systemName: "info.circle")
                        
                        .font(.system(size: 60))
                        .fontDesign(.monospaced)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(20)
                        
                }
            
                .offset(x:350,y:-500)
                
                
                
                
                
                VStack{
                    Text("SKUNK!")
                        .font(.system(size: 150))
                        .fontDesign(.monospaced)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(20)
                    Spacer()
                    Text("This will be a \(numOfPlayers) Player Skunk Game")
                        .font(.system(size: 50))
                        .fontDesign(.monospaced)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    VStack {
                        Text("Players?")
                            .font(.system(size: 75))
                            .fontDesign(.monospaced)
                            .fontWeight(.heavy)
                            .foregroundStyle(.white)
                            .padding(5)
                        HStack{
                            Button{
                                numOfPlayers = 2
                            }
                            label:{
                                Rectangle()
                                    .fill(.twopYellow)
                                    .frame(width: 250, height: 300)
                                    .overlay{
                                        Text("2P")
                                            .font(.system(size: 150))
                                            .fontDesign(.monospaced)
                                            .fontWeight(.heavy)
                                            .foregroundStyle(.white)
                                        
                                    }
                            }
                            
                            Button{
                                numOfPlayers = 3
                            }
                            label:{
                                Rectangle()
                                    .fill(.threepOrange)
                                    .frame(width: 250, height: 300)
                                    .overlay{
                                        Text("3P")
                                            .font(.system(size: 150))
                                            .fontDesign(.monospaced)
                                            .fontWeight(.heavy)
                                            .foregroundStyle(.white)
                                        
                                    }
                            }
                            
                            Button{
                                numOfPlayers = 4
                            }
                            label:{
                                Rectangle()
                                    .fill(.fourpRed)
                                    .frame(width: 250, height: 300)
                                    .overlay{
                                        Text("4P")
                                            .font(.system(size: 150))
                                            .fontDesign(.monospaced)
                                            .fontWeight(.heavy)
                                            .foregroundStyle(.white)
                                        
                                    }
                            }
                        }
                        
                    }
                    .padding(15)
                    
                    .background( Color.black.opacity(0.45) )
                    
                    Spacer()
                    Button("Start Game") {
                        for _ in 0..<numOfPlayers {
                            playerScore.append(0)
                            
                        }
                        start = true
                    }
                    .font(.system(size: 80))
                    .fontDesign(.monospaced)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .tint(.green)
                    .buttonStyle(.borderedProminent)
                    

                    Spacer()
                    
                    
                }
                
                
            }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.mainMenuCyan)
        .tint(.white)
        }
        
        .toolbarBackground(.hidden, for: .navigationBar)
        
    }
    
}
#Preview {
    ContentView()
}

