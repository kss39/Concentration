//
//  Card.swift
//  Concentration
//
//  Created by Tianyang Wang on 2019/6/18.
//  Copyright © 2019 Tianyang Wang. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    
    var identifier: Int
    
    private static var nextId = 0;

    private static func getUniqueIdentifier() -> Int {
        nextId += 1
        return nextId;
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
