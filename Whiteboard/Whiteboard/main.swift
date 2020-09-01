//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

class Program {
    func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
        var leftPointer = 0
        var rightPointer = (array.count-1)

        while leftPointer <= rightPointer {
            if array[leftPointer] == toMove && array[rightPointer] == toMove {
                rightPointer -= 1
            } else if array[leftPointer] == toMove && array[rightPointer] != toMove {
                let tempLeftValue = array[leftPointer]
                array[leftPointer] = array[rightPointer]
                array[rightPointer] = tempLeftValue
            } else if array[leftPointer] != toMove && array[rightPointer] == toMove {
                leftPointer += 1
                rightPointer -= 1
            } else {
                leftPointer += 1
            }
        }
        return array
    }
}

var array = [1, 2, 4, 5, 3]
print(moveElementToEnd(&array, 3))
