//
//  main.swift
//  Whiteboard
//
//  Created by Álvaro Santillan on 8/30/20.
//  Copyright © 2020 Álvaro Santillan. All rights reserved.
//

import Foundation

var str = " a a"

let decimalCharacters = CharacterSet.decimalDigits
let letterCharacters = CharacterSet.letters

// Remove leading and trailing whitespaces:
str = str.trimmingCharacters(in: .whitespaces)
let decimalRange = str.rangeOfCharacter(from: decimalCharacters)
let letterRange = str.rangeOfCharacter(from: letterCharacters)

if letterRange != nil {
    print("found")
} else {
    print("not")
}
print(str)
