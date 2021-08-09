import SwiftUI
//ViewModel

class EmojiMemoryGame: ObservableObject {
//    private(set) var model: MemoryGame<String>
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["😀","😃","😄","😁","😆","😅","😂","🤣","🥲","☺️"]

    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: [Card] {
        return model.cards
    }
    //Mark - Tntent(S)
    func choose(_ card:Card){
        model.choose(card)
    }
}

