//
//  ContentView.swift
//  SwiftUIStanford
//
//  Created by Workspace Infotech on 6/9/21.
//

import SwiftUI

struct MainContentView: View {
    
    @ObservedObject var gameViewModel : EmojiMemoryGame
    
    var body: some View {
        
        VStack{
            ScrollView{
                LazyVGrid(columns:  [GridItem(.adaptive(minimum: 65))]){
                    ForEach(gameViewModel.cards){ card in
                        CardView(card: card).aspectRatio(2/3,contentMode: .fit).onTapGesture {
                            gameViewModel.choose(card)
                        }
                    }
//                    ForEach(emojis[0..<emojiCount], id: \.self) {
//                        emoji in
//                        CardView(isFaceUp: true, contentString: emoji).aspectRatio(2/3,contentMode: .fit)
//                    }
                }
            }.padding().foregroundColor(.red)
            Spacer()
            HStack{
                removeButton.foregroundColor(.red)
                Spacer()
                addButton.foregroundColor(.green)
                
            }.padding().font(.largeTitle)
        }.padding()
    }
    
    var addButton : some View{
        Button(action: {
//            if emojiCount < emojis.count{
//                emojiCount += 1
//            }
        }, label: {
            Image(systemName: "plus.circle")
        })
    }
    
    var removeButton : some View{
        Button(action: {
//            if emojiCount > 0{
//                emojiCount -= 1
//            }
        }, label: {
            Image(systemName: "minus.circle")
            
        })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let gameViewModel =  EmojiMemoryGame()
        MainContentView(gameViewModel: gameViewModel).preferredColorScheme(.dark)
        MainContentView(gameViewModel: gameViewModel).preferredColorScheme(.light)
    }
}
