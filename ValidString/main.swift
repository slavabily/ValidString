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
    // assessment of character appearing freqwency
    var freqs = 0
    var diff = 0
    for (_, freq) in counts {
        if freq != freqs {
            freqs = freq
            diff += 1
        }
    }
    print(diff)
    if diff > 2 {
        return "NO"
    }
    return "YES"
}

print(isValid(s: "abcdefghhgfedecba"))

