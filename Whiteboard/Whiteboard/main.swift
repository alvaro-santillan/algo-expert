//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation


func twoNumberSum(array: [Int], targetSum: Int) -> [Int] {
    for (iIndex, _) in array.enumerated() {
        if iIndex == array.count-1 {
            return []
        }
        
        for j in (iIndex+1)...(array.count-1) {
            if array[iIndex] + array[j] == targetSum {
                return [array[iIndex], array[j]]
            }
        }
    }
    return []
}

twoNumberSum(array: [-1,6], targetSum: 4)
