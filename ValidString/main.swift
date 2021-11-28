//
//  main.swift
//  ValidString
//
//  Created by slava bily on 25.11.2021.
//

import Foundation

func isValid(s: String) -> String {
    let mappedItems = s.map { ($0, 1) }
    print(mappedItems)
    let counts = Dictionary(mappedItems) { $0 + $1 }
    print(counts)
    var freqArr = [Int]()
    for (_, freq) in counts {
        freqArr.append(freq)
    }
    print(freqArr)
    let min = freqArr.min()
    let max = freqArr.max()
    if max! - min! > 1 {
        return "NO"
    } else {
        var nmax = 0
        var nmin = 0
        for i in freqArr {
            if i == max {
                nmax += 1
            } else {
                nmin += 1
            }
        }
        if nmax > 1 && nmin > 1 {
            return "NO"
        }
    }
     
    return "YES"
}

print(isValid(s: "aabbc"))

