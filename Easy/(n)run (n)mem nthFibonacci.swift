//
//  Created by Álvaro Santillan on 9/2/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//  https://www.algoexpert.io/questions/Nth%20Fibonacci
//

import Foundation

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
