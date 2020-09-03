//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

// run(n) space(n)
class Program {
    func getNthFib(n: Int) -> Int {
        var counter = 1
        var value = 0
        
        if n == 1 {
            return 0
        }
        if n == 2 {
            return 1
        }
        
        func fib(first: Int, secoind: Int) {
            counter += 1
            
            if counter != n {
                value = first+secoind
                fib(first: secoind, secoind: first+secoind)
            }
        }
        
        fib(first: 0, secoind: 1)
        return value
    }
}

let demo = Program()
print(demo.getNthFib(n: 6))
