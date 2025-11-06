//
//  InfoView.swift
//  SkunkGameProject
//
//  Created by Trytten, Blake - Student on 11/5/25.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true))
                {
                    
                    VStack{
                        VStack {
                            Text("How To Play SKUNK!")
                                .font(.system(size: 70))
                                .fontDesign(.monospaced)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                                .padding(20)
                                .multilineTextAlignment(.center)
                            Text("(Tap Anywhere To Go Back)")
                                .font(.system(size: 30))
                                .fontDesign(.monospaced)
                                .fontWeight(.light)
                                .foregroundStyle(.white)
                            
                            
                        }
                        Spacer()
                        VStack{
                            Text("Objective: Skunk is a dice game where the objective is to accumulate a HUNDRED point total over a series of rounds without rolling a ONE")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 30))
                                .fontDesign(.monospaced)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .padding()
                            Text("Saving: After the dice are rolled, if no ONES appear each player must decide whether to keep rolling and risk the next roll for more points, or sit down and SAVE their current score for the round.")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 30))
                                .fontDesign(.monospaced)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .padding()
                            Text("Skunked: If somebody rolls snakes eyes (Double ones), any player who is currently standing immediately loses all points they have accumulated in all previous rounds as well as the current one")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 30))
                                .fontDesign(.monospaced)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .padding()
                            
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue.opacity(0.7))
            .tint(.white)
        }
        }
    }


#Preview {
    InfoView()
}
