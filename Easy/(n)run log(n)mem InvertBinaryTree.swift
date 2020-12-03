//
//  Created by Álvaro Santillan on 12/1/2020.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Invert%20Binary%20Tree
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
    
    func invertBinaryTree(tree: BinaryTree?) {
    // Write your code here.
        if tree != nil {
            let tempHolder = tree?.right
            tree?.right = tree?.left
            tree?.left = tempHolder
            invertBinaryTree(tree: tree?.right)
            invertBinaryTree(tree: tree?.left)
        }
    }
    
//    func inOrderCheck(node: BinaryTree?) {
//        if node != nil {
//            inOrderCheck(node: node?.left)
//            print(node?.value)
//            inOrderCheck(node: node?.right)
//        }
//    }
}

//var binary = Program()
//var root = Program.BinaryTree.init(val: 1)
//root.left = Program.BinaryTree.init(val: 2)
//root.right = Program.BinaryTree.init(val: 3)
//root.left?.left = Program.BinaryTree.init(val: 4)
//root.left?.right = Program.BinaryTree.init(val: 5)
//root.right?.left = Program.BinaryTree.init(val: 6)
//root.right?.right = Program.BinaryTree.init(val: 7)
//root.left?.left?.left = Program.BinaryTree.init(val: 8)
//root.left?.left?.right = Program.BinaryTree.init(val: 9)
//binary.invertBinaryTree(tree: root)
//binary.inOrderCheck(node: root)
