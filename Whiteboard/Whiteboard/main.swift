//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation


func twoNumberSum(array: [Int], targetSum: Int) -> [Int] {
    var hashTable = [Int:Bool]()
    
    for i in 0...(array.count-1) {
        let neededValue = targetSum - array[i]
        if hashTable[neededValue] == true {
            print(neededValue, array[i])
            return [neededValue, array[i]]
        } else {
            hashTable[array[i]] = true
        }
    }
    return []
}

twoNumberSum(array: [-1,6], targetSum: 5)
