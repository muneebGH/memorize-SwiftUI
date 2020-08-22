//
//  EmojiMemoryGameView.swift
//  memorize
//
//  Created by Muneeb Ur Rehman on 19/05/2020.
//  Copyright © 2020 Muneeb Ur Rehman. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel:EmojiMemoryGame

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
       
    }
}





struct CardView:View{
    var card:MemoryGame<String>.Card
    var body:some View{
        GeometryReader{geometry in
            self.body(for: geometry.size)
        }
    }
    

    func body(for size:CGSize)-> some View{
        ZStack{
            if self.card.isFacedUp {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: edgeLineWidth)
                Text(self.card.content)
            }
            else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
        .font(Font.system(size: fontSize(for: size)))
    }
    
    
    
    //MARK: - Drawing constants
    let cornerRadius:CGFloat = 10.0
    let edgeLineWidth:CGFloat = 3.0
    func fontSize(for size:CGSize) -> CGFloat{
        min(size.width,size.height*0.75)
    }
}







































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
