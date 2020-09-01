//
//  Created by Álvaro Santillan on 8/31/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Smallest%20Difference
//

import Foundation

class Program {
    func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
        arrayOne.sort()
        arrayTwo.sort()
        var arrayOnePointer = 0
        var arrayTwoPointer = 0
        var currentMin = Int.max
        var currentMinValues = [Int]()
        
        while arrayOnePointer != arrayOne.count && arrayTwoPointer != arrayTwo.count {
            if arrayOne[arrayOnePointer] == arrayTwo[arrayTwoPointer] {
                return [arrayOne[arrayOnePointer], arrayTwo[arrayTwoPointer]]
            } else if arrayOne[arrayOnePointer] < arrayTwo[arrayTwoPointer] {
                if abs((arrayOne[arrayOnePointer] - arrayTwo[arrayTwoPointer])) < currentMin {
                    currentMinValues = [arrayOne[arrayOnePointer], arrayTwo[arrayTwoPointer]]
                    currentMin = abs(arrayOne[arrayOnePointer] - arrayTwo[arrayTwoPointer])
                }
                arrayOnePointer += 1
            } else {
                if abs((arrayOne[arrayOnePointer] - arrayTwo[arrayTwoPointer])) < currentMin {
                    currentMinValues = [arrayOne[arrayOnePointer], arrayTwo[arrayTwoPointer]]
                    currentMin = abs(arrayOne[arrayOnePointer] - arrayTwo[arrayTwoPointer])
                }
                arrayTwoPointer += 1
            }
        }
        return currentMinValues
    }
}
