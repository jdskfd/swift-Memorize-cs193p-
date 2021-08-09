//
//  MemorizeApp.swift
//  Memorize
//
//  Created by JoHsun Chao on 2021/7/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
