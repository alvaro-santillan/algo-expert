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

        while arrayPointer != (array.count) {
            if array[arrayPointer] == sequence[sequancePointer] {
                sequancePointer += 1
            }
            arrayPointer += 1
        
            if sequancePointer == sequence.count {
                return true
            }
        }
        return false
    }
}
