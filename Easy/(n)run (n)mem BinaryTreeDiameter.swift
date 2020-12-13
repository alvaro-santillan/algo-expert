//
//  Created by Álvaro Santillan on 12/1/2020.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Binary%20Tree%20Diameter
//

import Foundation

class Program {
    class BinaryTree {
        var value: Int
        var right: BinaryTree?
        var left: BinaryTree?
        
        init(val: Int) {
            value = val
        }
    }
    
    var maxDiamater = -1
    func binaryTreeDiameter(_ tree: BinaryTree) -> Int {
      // Write your code here.
        binaryTreeFinder(tree: tree, leftCount: 0, rightCount: 0)
        return maxDiamater
    }
    
    func binaryTreeFinder(tree: BinaryTree?, leftCount: Int, rightCount: Int) -> (Int,Int) {
        // Write your code here.
        if tree != nil {
            var tempLeftCount = leftCount
            var tempRightCount = rightCount
            
            let LeftReport = binaryTreeFinder(tree: tree?.left, leftCount: tempLeftCount, rightCount: tempRightCount)
            let RightReport = binaryTreeFinder(tree: tree?.right, leftCount: tempLeftCount, rightCount: tempRightCount)
            tempLeftCount = max(LeftReport.0, LeftReport.1) + tempLeftCount
            tempRightCount = max(RightReport.0, RightReport.1) + tempRightCount
            
            if tree?.right != nil {
                tempRightCount += 1
            }
            
            if tree?.left != nil {
                tempLeftCount += 1
            }
            
            if tempLeftCount + tempRightCount > maxDiamater {
                maxDiamater = (tempLeftCount + tempRightCount)
            }
            return(tempLeftCount, tempRightCount)
        }
        return (0,0)
    }
}
        
var biniary = Program()
var root = Program.BinaryTree.init(val: 1)
root.left = Program.BinaryTree.init(val: 3)
root.right = Program.BinaryTree.init(val: 2)
root.left?.left = Program.BinaryTree.init(val: 7)
root.left?.right = Program.BinaryTree.init(val: 4)
root.left?.left?.left = Program.BinaryTree.init(val: 8)
root.left?.left?.left?.left = Program.BinaryTree.init(val: 9)
root.left?.right?.right = Program.BinaryTree.init(val: 5)
root.left?.right?.right?.right = Program.BinaryTree.init(val: 6)
print(biniary.binaryTreeDiameter(root))
