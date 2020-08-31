//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Two%20Number%20Sum
//

import Foundation

class Program {
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
}
