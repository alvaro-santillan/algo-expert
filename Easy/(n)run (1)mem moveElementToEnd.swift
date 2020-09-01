//
//  Created by Álvaro Santillan on 8/31/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Move%20Element%20To%20End
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
