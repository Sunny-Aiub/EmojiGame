//
//  SwiftUIStanfordApp.swift
//  SwiftUIStanford
//
//  Created by Workspace Infotech on 6/9/21.
//

import SwiftUI

@main
struct SwiftUIStanfordApp: App {
    
    var gameViewModel = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            MainContentView(gameViewModel: gameViewModel)
        }
    }
}
