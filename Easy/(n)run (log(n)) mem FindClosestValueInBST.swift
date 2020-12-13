//
//  Created by Álvaro Santillan on 12/2/2020.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Find%20Closest%20Value%20In%20BST
//

import Foundation

class Program {
    class BST {
        var value: Int
        var right: BST?
        var left: BST?
        
        init(val: Int) {
            value = val
        }
    }
    
    var closetvalue = Int()
    func findClosestValueInBST(tree: BST?, target: Int) -> Int {
        closetvalue = tree!.value
        findClosestValue(tree: tree, target: target)
        return closetvalue
    }
    
    
    func findClosestValue(tree: BST?, target: Int) {
        // Write your code here.
        if tree != nil {
            print(tree?.value)
            if tree?.value == target {
                closetvalue = tree!.value
            } else if target > tree!.value {
                if abs(target - closetvalue) > abs(target - tree!.value) {
                    closetvalue = tree!.value
                }
                findClosestValue(tree: tree?.right, target: target)
            } else if target < tree!.value {
                if abs(target - closetvalue) > abs(target - tree!.value) {
                    closetvalue = tree!.value
                }
                findClosestValue(tree: tree?.left, target: target)
            }
        }
    }
}

var binary = Program()
var root = Program.BST.init(val: 10)
root.left = Program.BST.init(val: 5)
root.left?.left = Program.BST.init(val: 2)
root.left?.right = Program.BST.init(val: 5)
root.left?.left?.left = Program.BST.init(val: 1)
root.right = Program.BST.init(val: 15)
root.right?.left = Program.BST.init(val: 13)
root.right?.right = Program.BST.init(val: 22)
root.right?.left?.right = Program.BST.init(val: 14)
print(binary.findClosestValueInBST(tree: root, target: 11))
