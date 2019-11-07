//
//  Theme.swift
//  Concentration
//
//  Created by Tianyang Wang on 2019/7/1.
//  Copyright © 2019 Tianyang Wang. All rights reserved.
//

import UIKit

struct Theme {
    private(set) var color: UIColor
    
    var faces: [String]
    
    private static var library: [Theme] = [
        Theme(color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1),
              faces: ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐨", "🐯", "🦁", "🐮"]),
        Theme(color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),
              faces: ["⚽️", "🏀", "🏈", "⚾️", "🎾", "🏐", "🏉", "🥏", "🎱", "🏓", "🏒", "🏸"]),
        Theme(color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),
              faces: ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚛", "🚜", "🏍"]),
        Theme(color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),
              faces: ["♈️", "♉️", "♊️", "♋️", "♌️", "♍️", "♎️", "♏️", "♐️", "♑️", "♒️", "♓️"]),
        Theme(color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1),
              faces: ["🇧🇷", "🇬🇧", "🇲🇾", "🇬🇹", "🇨🇦", "🇫🇷", "🇩🇪", "🇲🇨", "🇬🇷", "🇧🇩", "🇦🇷", "🇯🇵"]),
        // TODO: baida
        Theme(color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),
              faces: ["🥐", "🥩", "🍕", "🍔", "🍛", "🥪", "🥗", "🍱", "🥧", "🍮", "🍳", "🍗"]),
    ]
    
    static func getRandomTheme() -> Theme {
        return library[library.count.arc4random]
    }

}
