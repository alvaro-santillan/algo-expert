//
//  Created by Álvaro Santillan on 12/1/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Branch%20Sums
//

import Foundation

class Program {
    class BST {
        var value: Int
        var left: BST?
        var right: BST?

        init(value: Int) {
          self.value = value
        }
    }

    var travaersal = [Int]()
    func branchSums(root: BST) -> [Int] {
    // Write your code here.
        return preOrderTraversel(node: root, sum: 0)
    }
    
    func preOrderTraversel(node: BST?, sum: Int) -> [Int] {
        if node != nil {
            let newSum = sum + (node?.value ?? 0)
//            print(node?.value ?? "error")

            if node?.left == nil && node?.right == nil {
//                print("Total", newSum)
                travaersal.append(newSum)
            }
            preOrderTraversel(node: node?.left, sum: newSum)
            preOrderTraversel(node: node?.right, sum: newSum)
        }
        return travaersal
    }
    
    //var root = Node.init(v: 1)
    //root.left = Node.init(v: 2)
    //root.right = Node.init(v: 3)
    //root.left?.left = Node.init(v: 4)
    //root.left?.right = Node.init(v: 5)
    //root.right?.left = Node.init(v: 6)
    //root.right?.right = Node.init(v: 7)
    //root.left?.left?.left = Node.init(v: 8)
    //root.left?.left?.right = Node.init(v: 9)
    //root.left?.right?.left = Node.init(v: 10)

    //func inOrder(node: Node?) {
    //    if node != nil {
    //        inOrder(node: node?.left)
    //        print(node?.value ?? "error")
    //        inOrder(node: node?.right)
    //    }
    //}

    //func postOrder(node: Node?) {
    //    if node != nil {
    //        postOrder(node: node?.left)
    //        postOrder(node: node?.right)
    //        print(node?.value ?? "error")
    //    }
    //}
}

