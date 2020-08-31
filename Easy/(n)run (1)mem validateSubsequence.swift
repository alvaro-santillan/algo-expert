//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Validate%20Subsequence
//

import Foundation

class Program {
    static func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
        var arrayPointer = 0
        var sequancePointer = 0
        var foundSequanceValues = 0

        while arrayPointer != (array.count) {
            if array[arrayPointer] == sequence[sequancePointer] {
                arrayPointer += 1
                sequancePointer += 1
                foundSequanceValues += 1
            } else {
                arrayPointer += 1
            }

            if foundSequanceValues == sequence.count {
                return true
            }
        }
        return false
    }
}
