//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

// run n2 space (1)
func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
    var currentLowestValues = [Int]()
    var currentLowestValue = Int.max

    for (_, i) in arrayOne.enumerated() {
        for (_, j) in arrayTwo.enumerated() {
            if abs(i-j) < currentLowestValue {
                currentLowestValues = [i,j]
                currentLowestValue = abs(i-j)
            }
        }
    }
    return currentLowestValues
}

var arrayOne = [1,2,3345,2,78]
var arrayTwo = [1,1,1,1]
print(smallestDifference(arrayOne: &arrayOne, arrayTwo: &arrayTwo))
