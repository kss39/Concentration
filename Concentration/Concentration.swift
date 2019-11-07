//
//  Concentration.swift
//  Concentration
//
//  Created by Tianyang Wang on 2019/6/18.
//  Copyright © 2019 Tianyang Wang. All rights reserved.
//

import Foundation

class Concentration {
    
    private(set) var cards = [Card]()
    
    private(set) var flipCount = 0
    
    private var indexOfOneAnyOnlyFaceUpCards: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp {
                    if foundIndex == nil {
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set(newValue) {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
    func chooseCard(at index: Int) {
        assert(cards.indices.contains(index), "Concentration.chooseCard(at: \(index), IndexOutOfBoundsException")
        if !cards[index].isMatched {
            flipCount += 1
            if let matchIndex = indexOfOneAnyOnlyFaceUpCards, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
            } else {
                indexOfOneAnyOnlyFaceUpCards = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        assert(numberOfPairsOfCards > 0, "Concentration.int(at: \(numberOfPairsOfCards), IllegalArgumentException")
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            for _ in 0..<2 {
                // Insert the new card at random position, then all cards are shuffled.
                cards.insert(card, at: cards.count.arc4random)
            }
        }
    }
}
