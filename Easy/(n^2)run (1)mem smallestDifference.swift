//
//  Created by Álvaro Santillan on 8/31/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Smallest%20Difference
//

import Foundation

class Program {
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
}
