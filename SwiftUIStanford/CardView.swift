

//
//  CardView.swift
//  SwiftUIStanford
//
//  Created by Workspace Infotech on 6/9/21.
//

import Foundation
import SwiftUI
struct CardView: View {
//    @State var isFaceUp:Bool = false
//    var contentString : String = ""
    var card : MemoryGame<String>.Card
    
    
    var body : some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20.0)//() //RoundedRectangle(cornerRadius: 20.0)
            if(card.isFaceUp){
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            }
            else if card.isMatched{
                shape.opacity(0)
            }
            else{
                shape.fill()
            }
        } 
    }
    
}
 
