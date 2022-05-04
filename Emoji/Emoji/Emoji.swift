//
//  Emoji.swift
//  Emoji
//
//  Created by Namdq on 19/04/2022.
//

import Foundation


struct Emoji {
    var character = ""
    var defintion = ""
    var year = 0
    var rating = 0.0
    var category = ""
}

let emoji = ["😄", "😅", "😎"]

func getEmoji() -> [Emoji] {
    var emoji1 = Emoji(character: "😁", defintion: "smile", year: 1990, rating: 1.0, category: "test")
    var emoji2 = Emoji(character: "🥲", defintion: "cry", year: 2000, rating: 2.0, category: "test2")
    return [emoji1, emoji2]
}
