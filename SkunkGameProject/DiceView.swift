//
//  DiceView.swift
//  SkunkGameProject
//
//  Created by Trytten, Blake - Student on 10/29/25.
//

import SwiftUI

struct DiceView: View {
    
    
    @State var numberOfPips: Int = 1
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black,.white)
            Button("Roll") {
                numberOfPips = (Int.random(in: 1...6))
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
