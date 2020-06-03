//
//  MemoryGame.swift
//  memorize
//
//  Created by Muneeb Ur Rehman on 26/05/2020.
//  Copyright © 2020 Muneeb Ur Rehman. All rights reserved.
//

import Foundation


struct MemoryGame<Content>{

    
    var cards=Array<Card>()
    init(noOfPairs:Int,contentIntializerFactory:(Int)->Content) {
        
        for index in 0..<noOfPairs {
            let content=contentIntializerFactory(index)
            cards.append(Card(content: content,id: index*2))
            cards.append(Card(content: content,id: index*2+1))
        }
        cards.shuffle()
        
    }
    
    func choose(card:Card){
        print("choosed card \(card)")
    }
    struct Card : Identifiable{
        var isFacedUp:Bool=true
        var isMatched:Bool=false
        var content:Content
        var id:Int
    }
}
