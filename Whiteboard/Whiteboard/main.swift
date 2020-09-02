//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

// n runtime (1) space
class Program {
  func isMonotonic(array: [Int]) -> Bool {
    var isDecreasing = false
    var isIncreasing = false
    
    for iIndex in 0...array.count {
        if iIndex+1 < array.count {
            if array[iIndex] > array[iIndex+1] {
                isDecreasing = true
            } else if array[iIndex] < array[iIndex+1] {
                isIncreasing = true
            }
        }
        if isDecreasing && isIncreasing == true {
            return false
        }
    }
    return true
  }
}

let demo = Program()
var array = [-1,-5,-10,1100,-1100,-1102,-9001]
//array = [1,2,3,4,5,6,7,7]
//array = [1,2,3,2,1]
print(demo.isMonotonic(array: array))
