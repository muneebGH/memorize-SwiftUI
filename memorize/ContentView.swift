//
//  ContentView.swift
//  memorize
//
//  Created by Muneeb Ur Rehman on 19/05/2020.
//  Copyright © 2020 Muneeb Ur Rehman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ForEach(0..<4){index in
                CardView(isFacedUp:false);
            }
           
        }
            .foregroundColor(Color.orange)
            .padding()
            .font(.largeTitle)
        
       
    }
}





struct CardView:View{
    var isFacedUp:Bool
    var body:some View{
        ZStack{
            if isFacedUp {
                RoundedRectangle(cornerRadius: 10.0).fill().foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke()
                Text("👻")

            }
            else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}







































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
