//
//  EmojiMemoryGameView.swift
//  memorize
//
//  Created by Muneeb Ur Rehman on 19/05/2020.
//  Copyright © 2020 Muneeb Ur Rehman. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewModel:EmojiMemoryGame
    var fontForCards:Font{
        if(viewModel.cards.count<=8){
            return Font.largeTitle
        }else{
           return Font.title
        }
    }
    var body: some View {
        HStack{
            ForEach(viewModel.cards){card in
                CardView(card: card)
                    .onTapGesture {
                        self.viewModel.choose(card: card)
                }
                    .aspectRatio(0.66, contentMode: .fit);
            }
           
        }
            .foregroundColor(Color.orange)
            .padding()
            .font(fontForCards)
            
        
       
    }
}





struct CardView:View{
    var card:MemoryGame<String>.Card
    var body:some View{
        ZStack{
            if card.isFacedUp {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke()
                Text(card.content)

            }
            else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}







































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
