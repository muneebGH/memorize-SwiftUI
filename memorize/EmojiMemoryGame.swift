//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Muneeb Ur Rehman on 28/05/2020.
//  Copyright © 2020 Muneeb Ur Rehman. All rights reserved.
//


import SwiftUI

class EmojiMemoryGame{
    private var model:MemoryGame<String>=EmojiMemoryGame.createMemoryGame()
    
    var cards:Array<MemoryGame<String>.Card>{
        model.cards
    }
    
 

    static func createMemoryGame()-> MemoryGame<String>{
        let emojis=["👻","🎃","🕷","🧟‍♀️","🕸"]
        let randoms=Int.random(in: 2...5)
        print("random pairs number \(randoms)")
        return MemoryGame<String>(noOfPairs:5 ){ index in
            return emojis[index]
        }
    }
    //MARK: - intents
    func choose(card:MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
