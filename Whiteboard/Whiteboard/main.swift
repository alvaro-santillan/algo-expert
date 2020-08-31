//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation


func twoNumberSum(array: [Int], targetSum: Int) -> [Int] {
    let newArray = array.sorted()
    var leftPointer = 0
    var rightPointer = array.count-1
    
    while leftPointer != rightPointer {
        if (newArray[leftPointer] + newArray[rightPointer]) == targetSum {
            return [newArray[leftPointer], newArray[rightPointer]]
        }
        
        if (newArray[leftPointer] + newArray[rightPointer]) > targetSum {
            rightPointer -= 1
        } else {
            leftPointer += 1
        }
    }
    return []
}

print(twoNumberSum(array: [8,11], targetSum: 19))
