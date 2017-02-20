//
//  RomanNumerals.swift
//  RomanNumerals
//
//  Created by Dan Esrey on 2017/16/02.
//  Copyright © 2017 Dan Esrey. All rights reserved.
//

import Foundation

class RomanNumerals {
    
    private let romanDictionary: [(Int, String)] =
        [(1000, "M"),
         (900, "CM"),
         (500, "D"),
         (400, "CD"),
         (100, "C"),
         (90, "XC"),
         (50, "L"),
         (40, "XL"),
         (10, "X"),
         (9, "IX"),
         (5, "V"),
         (4, "IV"),
         (1, "I")]
    
    func toRoman(_ arabic: Int) -> String {
        var arabic = arabic
        var romanNumeral = ""
        for (arabicValue, romanValue) in romanDictionary {
            while arabic >= arabicValue {
                romanNumeral += romanValue
                arabic -= arabicValue
            }
        }
        return romanNumeral
    }
}
