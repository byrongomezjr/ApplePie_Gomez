//
//  Game.swift
//  ApplePie_Gomez
//
//  Created by Byron Gomez Jr on 3/8/23.
//  Copyright © 2023 Byron Gomez. All rights reserved.
//

import Foundation

struct Game {
    
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
        incorrectMovesRemaining -= 1
            
        }
    }
}
