//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

class Program {
    class BinaryTree {
        var value: Int
        var right: BinaryTree?
        var left: BinaryTree?
        var leftEdgeCount: Int?
        var rightEdgeCount: Int?
        
        init(val: Int) {
            value = val
        }
    }
    
    var maxx = -1
    func binaryTreeDiameter(tree: BinaryTree?, leftCount: Int, rightCount: Int) -> (Int,Int) {
        // Write your code here.
        if tree != nil {
            var tempLeftCount = leftCount
            var tempRightCount = rightCount
            
            let LeftReport = binaryTreeDiameter(tree: tree?.left, leftCount: tempLeftCount, rightCount: tempRightCount)
            let RightReport = binaryTreeDiameter(tree: tree?.right, leftCount: tempLeftCount, rightCount: tempRightCount)
            tempLeftCount = max(LeftReport.0, LeftReport.1) + tempLeftCount
            tempRightCount = max(RightReport.0, RightReport.1) + tempRightCount
//            tree?.leftEdgeCount = tempLeftCount
//            tree?.rightEdgeCount = tempRightCount
            
                if tree?.right != nil {
                    tempRightCount += 1
                }
                
                if tree?.left != nil {
                    tempLeftCount += 1
                }
                
            print(tree?.value, tempLeftCount, tempRightCount)
            if tempLeftCount + tempRightCount > maxx {
                maxx = (tempLeftCount + tempRightCount)
            }
            print(maxx)
            return(tempLeftCount, tempRightCount)
        }
//        print(maxx)
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
//root.left?.right?.right = Program.BinaryTree.init(val: 5)
//root.left?.right?.right?.right = Program.BinaryTree.init(val: 6)
biniary.binaryTreeDiameter(tree: root, leftCount: 0, rightCount: 0)

