//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Two%20Number%20Sum
//

import Foundation

class Program {
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
}
