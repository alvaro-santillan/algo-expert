//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

var traversal = String()

class Node {
   var data: Int
   var left: Node?
   var right: Node?
   init(data: Int) {
      self.data = data
   }
}

class BinaryTreeTraversal {
    
    init(choice: String, start: Node?) {
        choiceManager(choice: choice, start: start)
    }
    
    func choiceManager(choice: String, start: Node?) {
        if choice == "Preorder" {
            print(preOrderTraversal(node: start))
        } else if choice == "Inorder" {
            print(inOrderTraversal(node: start))
        }
    }
    
    func preOrderTraversal(node: Node?) {
        guard let node = node else { return }
        traversal.append(String(node.data) + ",")
        preOrderTraversal(node: node.left)
        preOrderTraversal(node: node.right)
    }
    func inOrderTraversal(node: Node?) {
        if node?.data != nil {
            inOrderTraversal(node: node!.left)
            traversal.append(String(node!.data) + ",")
            inOrderTraversal(node: node!.right)
        }
    }
    func postOrderTraversal(node: Node?) {
        guard let node = node else { return }
        postOrderTraversal(node: node.left)
        postOrderTraversal(node: node.right)
        traversal.append(String(node.data) + ",")
    }
}

var root = Node(data: 1)
root.left = Node(data: 2)
root.right = Node(data: 3)
root.left?.left = Node(data: 4)
root.left?.right = Node(data: 5)
root.right?.left = Node(data: 6)
root.right?.right = Node(data: 7)
BinaryTreeTraversal(choice: "Inorder", start: root)
print(traversal)

//var traversssssal = String()
//
//class Node {
//    var value: Int
//    var rightNode: Node?
//    var leftNode: Node?
//
//    init(value: Int) {
//        self.value = value
//    }
//}
//
//class BinaryTreeTraversal {
//    init(choice: String, start: Node) {
//        choiceManager(choice: choice, start: start)
//    }
//
//    func choiceManager(choice: String, start: Node) {
//        if choice == "Preorder" {
//            print(preOrderTraversal(start: start, traversal: String()))
//        } else if choice == "Inorder" {
//            print(inOrderTraversal(start: start, traversal: String()))
//        }
//    }
//
//    func preOrderTraversal(start: Node, traversal: String) -> String {
//
//        if start.value != nil {
//            traversssssal.append(String(start.value) + "-")
//            preOrderTraversal(start: start.leftNode!, traversal: traversssssal)
////        }
////        if start.rightNode != nil {
//            preOrderTraversal(start: start.rightNode!, traversal: traversssssal)
//        }
//
//        return traversssssal
//    }
//
//    func inOrderTraversal(start: Node, traversal: String) -> String {
////        traversssssal.append(String(start.value) + "-")
//
////        if startValue = start.value
////        inOrderTraversal(start: start.left, traversal: traversssssal)
//
//        return traversssssal
//    }
//}
//
//var tree = Node(value: 1)
//tree.leftNode = Node(value: 2)
//tree.rightNode = Node(value: 3)
//tree.leftNode?.leftNode = Node(value: 4)
//tree.leftNode?.rightNode = Node(value: 5)
//tree.rightNode?.leftNode = Node(value: 6)
//tree.rightNode?.rightNode = Node(value: 7)
//BinaryTreeTraversal(choice: "Preorder", start: tree)
////BinaryTreeTraversal(choice: "Inorder", start: tree)
