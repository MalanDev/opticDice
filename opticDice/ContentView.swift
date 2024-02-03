//
//  ContentView.swift
//  opticDice
//
//  Created by Malan Amarasinghe on 2024-02-02.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    var diceData: DiceData

    var body: some View {
        VStack {
            Text(diceData.rolledNumber == 0 ? "🎲" : "\(diceData.rolledNumber)")
                .font(.custom("Menlo", size: 100))
                .bold()
        }
        .task {
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(diceData: DiceData())
}
