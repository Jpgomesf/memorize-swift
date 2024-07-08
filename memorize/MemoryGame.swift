//
//  MemoryGame.swift
//  memorize
//
//  Created by Joao Pedro Gomes Ferreira on 07/07/24.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
