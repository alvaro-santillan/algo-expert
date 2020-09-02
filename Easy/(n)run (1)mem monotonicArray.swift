//
//  Created by Álvaro Santillan on 9/2/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Monotonic%20Array
//

import Foundation

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
