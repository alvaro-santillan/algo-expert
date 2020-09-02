//
//  Created by Álvaro Santillan on 9/2/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Spiral%20Traverse
//

import Foundation

class Program {
    func spiralTraverse(array: [[Int]]) -> [Int] {
        let arraySize = array.count * array[0].count
        var result = [Int]()
        
        func sendIt(horizontalStart: Int, horizontalEnd: Int, verticalStart: Int, verticalEnd: Int) -> [Int] {
            if horizontalStart <= horizontalEnd && verticalStart <= verticalEnd {
                if result.count != arraySize {
                    for i in horizontalStart...horizontalEnd {
                        result.append(array[horizontalStart][i])
                    }
                }
                
                if result.count != arraySize {
                    for i in verticalStart+1...verticalEnd {
                        result.append(array[i][horizontalEnd])
                    }
                }
                
                if result.count != arraySize {
                    for i in (horizontalStart...horizontalEnd-1).reversed() {
                        result.append(array[verticalEnd][i])
                    }
                }

                if result.count != arraySize {
                    for i in (verticalStart+1...verticalEnd-1).reversed() {
                        result.append(array[i][verticalStart])
                    }
                }
                result = sendIt(horizontalStart: horizontalStart+1, horizontalEnd: horizontalEnd-1, verticalStart: verticalStart+1, verticalEnd: verticalEnd-1)
            }
            return result
        }
        return sendIt(horizontalStart: 0, horizontalEnd: array[0].count-1, verticalStart: 0, verticalEnd: array.count-1)
    }
}
