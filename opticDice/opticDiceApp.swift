//
//  opticDiceApp.swift
//  opticDice
//
//  Created by Malan Amarasinghe on 2024-02-02.
//

import SwiftUI

@Observable
class DiceData{
    var rolledNumber = 0
}

@main
struct opticDiceApp: App {
    @State var diceData = DiceData()
    var body: some Scene {
        WindowGroup {
            ContentView(diceData: diceData)
        }
        .defaultSize(width: 100, height: 100)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView(diceDate: diceData)
        }
    }
}
