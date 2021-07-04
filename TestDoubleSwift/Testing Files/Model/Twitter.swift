//
//  Twitter.swift
//  TestDoubleSwift
//
//  Created by Jakub Gawecki on 28/03/2021.
//

import Foundation

struct Tweet {
    var text:   String
    let author: String
    let date:   Date
    
    init(text: String, author: String, date: Date = Date()) {
        self.text   = text
        self.author = author
        self.date   = date
    }
}

class MockData {
    static let tweet1 = Tweet(text: "Hello",
                              author: "Kuba")
    
    static let tweet2 = Tweet(text: "Hi",
                              author: "Jameela",
                              date: Date(timeIntervalSince1970: .leastNonzeroMagnitude))
}
