//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation


class Program {
  func isPalindrome(string: String) -> Bool {
    var newString = string
    
    while newString.count > 1 {
        let frontLetter = newString.removeFirst()
        let lastLetter = newString.removeLast()
        if frontLetter != lastLetter {
            return false
        }
    }
    return true
  }
}

let demo = Program()
var array = [1,2,3,3,4, 0,10, 6,5,-1,-3, 2,3]
//array = [1,2,3,4,5,6,7,7]
//array = [1,2,3,2,1]
print(demo.isPalindrome(string: "ab"))
//print(demo.longestPeak(array: array))
