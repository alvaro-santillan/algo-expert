//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Two%20Number%20Sum
//

import Foundation

class Program {
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
}
