//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
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

  func branchSums(root: BST) -> [Int] {
    let start = root
    
    return []
  }
}

let demo = Program()
var tree: Program.BST = Program.BST(value: 1)
tree.left = Program.BST(value: 2)
tree.right = Program.BST(value: 3)
tree.left!.left = Program.BST(value: 4)
tree.left!.right = Program.BST(value: 5)
tree.right!.left = Program.BST(value: 6)
tree.right!.right = Program.BST(value: 7)
tree.left!.left!.left = Program.BST(value: 8)
tree.left!.left!.right = Program.BST(value: 9)
tree.left!.right!.left = Program.BST(value: 10)
demo.branchSums(root: tree)
