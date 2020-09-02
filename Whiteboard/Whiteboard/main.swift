//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

//class Program {
    func spiralTraverse(array: [[Int]]) -> [Int] {
        var answer = [Int]()
        var visitedXAxis = [Int]()
        var visitedYAxis = [Int]()
        var currentX = 0
        var currentY = 0
        
        while answer.count != (array[0].count * array.count) {
            while !(visitedYAxis.contains(currentY)) && !(visitedXAxis.contains(currentX)) {
                if currentY == array[0].count-1 {
                    break
                }
                print(array[currentX][currentY])
                visitedYAxis.append(currentX)
                currentY += 1
            }
            
            while !(visitedYAxis.contains(currentY)) && !(visitedXAxis.contains(currentX)) {
                if currentX == array.count-1 {
                    break
                }
                print(array[currentX][currentY])
                visitedXAxis.append(currentY)
                currentX += 1
            }
            
            
            while !(visitedYAxis.contains(currentY)) && !(visitedXAxis.contains(currentX)) {
                if currentX == 0 {
                    break
                }
                print(array[currentX][currentY])
//                visitedXAxis.append(currentX)
                currentX -= 1
            }
            
            return []
        }
        
        return []
    }
//}

var array = [[1, 2, 3, 4], [12, 13, 14, 5], [11, 16, 15, 6], [10, 9, 8, 7]]
print(spiralTraverse(array: array))
