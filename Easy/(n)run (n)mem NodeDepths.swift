//
//  Created by Álvaro Santillan on 12/1/2020.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Node%20Depths
//

import Foundation

// Static was giving to many problems
class Program {
  class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?

    init(value: Int) {
      self.value = value
    }
  }

  static func nodeDepths(_ root: BinaryTree?, _ depth: Int = 0) -> Int {
    // Write your code here.
    if let tree = root {
            return depth + nodeDepths(tree.left, depth + 1) + nodeDepths(tree.right, depth + 1)
        }
        return 0
  }
}

// Real Solution
//class Program {
//    class BinaryTree {
//        var value: Int
//        var left: BinaryTree?
//        var right: BinaryTree?
//
//        init(value: Int) {
//          self.value = value
//        }
//    }
//
//    var total = 0
//    func nodeDepths(_ root: BinaryTree?) -> Int {
//    // Write your code here.
//        return postOrder(node: root, sum: 0)
//    }
//
//    func postOrder(node: BinaryTree?, sum: Int) -> Int {
//        if node != nil {
//            postOrder(node: node?.left, sum: sum+1)
//            postOrder(node: node?.right, sum: sum+1)
//            total += sum
//    //        print(node?.value, sum)
//        }
//        return total
//    }
//}
//
//var binary = Program()
//var root = Program.BinaryTree.init(value: 1)
//root.left = Program.BinaryTree.init(value: 2)
//root.right = Program.BinaryTree.init(value: 3)
//root.left?.left = Program.BinaryTree.init(value: 4)
//root.left?.right = Program.BinaryTree.init(value: 5)
//root.right?.left = Program.BinaryTree.init(value: 6)
//root.right?.right = Program.BinaryTree.init(value: 7)
//root.left?.left?.left = Program.BinaryTree.init(value: 8)
//root.left?.left?.right = Program.BinaryTree.init(value: 9)
//print(binary.nodeDepths(root))
