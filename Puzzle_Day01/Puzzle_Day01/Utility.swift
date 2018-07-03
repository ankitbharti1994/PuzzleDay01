//
//  Utility.swift
//  Puzzle_Day01
//
//  Created by Ankit Kumar Bharti on 03/07/18.
//  Copyright © 2018 Exilant. All rights reserved.
//

import Foundation

struct Utility {
    
    
    /// The captcha requires you to review a sequence of digits (your puzzle input) and find the sum of all digits that match the next digit in the list.
    /// The list is circular, so the digit after the last digit is the first digit in the list.
    ///
    /// - Parameter inputString: pass any kind of string which may contain integer, unicode character, small alphabet, captical alphabet or special case letter, in short pass the parameter whatever you feel but should be in string
    /// - Returns: it returns the integer
    static func sum(of inputString: String) -> Int {
        
        guard  inputString.count > 1 else { return 0 }
        
        var digits: [Int] = []
        var digit: Int?
        
        for character in inputString {
            if let digit1 = Int("\(character)") {
                if let initialDigit = digit {
                    if initialDigit == digit1 {
                        digits.append(digit1)
                    }
                }
                digit = digit1
            }
        }
        
        if inputString.first! == inputString.last!, let lastDigit = Int("\(inputString.last!)") {
            digits.append(lastDigit)
        }
        
        let finalResult = digits.reduce(0) {
            return $0 + $1
        }
        
        return finalResult
    }
}
