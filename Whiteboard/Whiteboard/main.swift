//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

// run nLogN + mLogM, space (1)
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

var arrayOne = [-1,5,10,20,28,3]
var arrayTwo = [26,134,135,15,17]
print(smallestDifference(arrayOne: &arrayOne, arrayTwo: &arrayTwo))
