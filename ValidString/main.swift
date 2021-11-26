//
//  main.swift
//  ValidString
//
//  Created by slava bily on 25.11.2021.
//

import Foundation

func isValid(s: String) -> String {
    // making a dict from string for character appearing freqwency assessment
    let mappedItems = s.map { ($0, 1) }
    print(mappedItems)
    let counts = Dictionary(mappedItems) { $0 + $1 }
    print(counts)
    
    
    return "YES"
}

print(isValid(s: "aabbcd"))

