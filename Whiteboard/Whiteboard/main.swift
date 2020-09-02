//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation


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



var array = [[1, 2, 3, 4, 5], [14, 15, 16, 17, 6], [13, 20, 19, 18, 7], [12, 11, 10, 9, 8]]
//array = [[1,2,3,4], [12,13,14,5], [11,16,15,6], [10,9,8,7]]
//array = [[1,2], [8,3], [7,4], [6,5]]
//array = [[1], [2], [3], [4]]
//array = [[1,2,3,4,5,6,7,8], [18,19,20,21,22,23,24,9], [17,16,15,14,13,12,11,10]]
//array = [[1]]
print(spiralTraverse(array: array))
