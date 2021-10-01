//
//  EmojiMemoryGame.swift
//  SwiftUIStanford
//
//  Created by Workspace Infotech on 7/9/21.
//

import Foundation
import Alamofire
class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["👊",  "🤘", "✌️","🤙", "👌", "👺", "🤡", "👻", "💀", "👽", "🤖", "🎃", "😺", "😸", "😹", "😻", "🤌", "🐯", "🦊", "🐣"]
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards : Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    func choose(_ card: MemoryGame<String>.Card)  {
//        objectWillChange.send()
        model.choose(card)
    }
    
    
}
