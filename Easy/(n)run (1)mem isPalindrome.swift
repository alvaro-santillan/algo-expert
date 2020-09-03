//
//  Created by Álvaro Santillan on 9/2/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Monotonic%20Array
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
