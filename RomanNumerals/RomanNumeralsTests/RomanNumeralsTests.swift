//
//  RomanNumeralsTests.swift
//  RomanNumeralsTests
//
//  Created by Dan Esrey on 2017/16/02.
//  Copyright © 2017 Dan Esrey. All rights reserved.
//

import XCTest
@testable import RomanNumerals

class RomanNumeralsTests: XCTestCase {
    
    func testToRoman() {
        let romanNumerals = RomanNumerals()

        // test single digit values
        XCTAssertEqual(romanNumerals.toRoman(0), "")
        XCTAssertEqual(romanNumerals.toRoman(1), "I")
        XCTAssertEqual(romanNumerals.toRoman(2), "II")
        XCTAssertEqual(romanNumerals.toRoman(3), "III")
        XCTAssertEqual(romanNumerals.toRoman(4), "IV")
        XCTAssertEqual(romanNumerals.toRoman(5), "V")
        XCTAssertEqual(romanNumerals.toRoman(6), "VI")
        XCTAssertEqual(romanNumerals.toRoman(7), "VII")
        XCTAssertEqual(romanNumerals.toRoman(8), "VIII")
        XCTAssertEqual(romanNumerals.toRoman(9), "IX")

        // test multiples of 10 up to 90
        XCTAssertEqual(romanNumerals.toRoman(10), "X")
        XCTAssertEqual(romanNumerals.toRoman(20), "XX")
        XCTAssertEqual(romanNumerals.toRoman(30), "XXX")
        XCTAssertEqual(romanNumerals.toRoman(40), "XL")
        XCTAssertEqual(romanNumerals.toRoman(50), "L")
        XCTAssertEqual(romanNumerals.toRoman(60), "LX")
        XCTAssertEqual(romanNumerals.toRoman(70), "LXX")
        XCTAssertEqual(romanNumerals.toRoman(80), "LXXX")
        XCTAssertEqual(romanNumerals.toRoman(90), "XC")
        
        // test multiples of 100 up to 3000
        XCTAssertEqual(romanNumerals.toRoman(100), "C")
        XCTAssertEqual(romanNumerals.toRoman(200), "CC")
        XCTAssertEqual(romanNumerals.toRoman(300), "CCC")
        XCTAssertEqual(romanNumerals.toRoman(400), "CD")
        XCTAssertEqual(romanNumerals.toRoman(500), "D")
        XCTAssertEqual(romanNumerals.toRoman(600), "DC")
        XCTAssertEqual(romanNumerals.toRoman(700), "DCC")
        XCTAssertEqual(romanNumerals.toRoman(800), "DCCC")
        XCTAssertEqual(romanNumerals.toRoman(900), "CM")
        XCTAssertEqual(romanNumerals.toRoman(1000), "M")
        XCTAssertEqual(romanNumerals.toRoman(1100), "MC")
        XCTAssertEqual(romanNumerals.toRoman(1200), "MCC")
        XCTAssertEqual(romanNumerals.toRoman(1300), "MCCC")
        XCTAssertEqual(romanNumerals.toRoman(1400), "MCD")
        XCTAssertEqual(romanNumerals.toRoman(1500), "MD")
        XCTAssertEqual(romanNumerals.toRoman(1600), "MDC")
        XCTAssertEqual(romanNumerals.toRoman(1700), "MDCC")
        XCTAssertEqual(romanNumerals.toRoman(1800), "MDCCC")
        XCTAssertEqual(romanNumerals.toRoman(1900), "MCM")
        XCTAssertEqual(romanNumerals.toRoman(2000), "MM")
        XCTAssertEqual(romanNumerals.toRoman(2100), "MMC")
        XCTAssertEqual(romanNumerals.toRoman(2200), "MMCC")
        XCTAssertEqual(romanNumerals.toRoman(2300), "MMCCC")
        XCTAssertEqual(romanNumerals.toRoman(2400), "MMCD")
        XCTAssertEqual(romanNumerals.toRoman(2500), "MMD")
        XCTAssertEqual(romanNumerals.toRoman(2600), "MMDC")
        XCTAssertEqual(romanNumerals.toRoman(2700), "MMDCC")
        XCTAssertEqual(romanNumerals.toRoman(2800), "MMDCCC")
        XCTAssertEqual(romanNumerals.toRoman(2900), "MMCM")
        XCTAssertEqual(romanNumerals.toRoman(3000), "MMM")

        // test numbers ending with 1 as final digit
        XCTAssertEqual(romanNumerals.toRoman(11), "XI")
        XCTAssertEqual(romanNumerals.toRoman(31), "XXXI")
        XCTAssertEqual(romanNumerals.toRoman(41), "XLI")
        XCTAssertEqual(romanNumerals.toRoman(61), "LXI")
        XCTAssertEqual(romanNumerals.toRoman(101), "CI")
        XCTAssertEqual(romanNumerals.toRoman(111), "CXI")
        XCTAssertEqual(romanNumerals.toRoman(141), "CXLI")
        XCTAssertEqual(romanNumerals.toRoman(191), "CXCI")
        XCTAssertEqual(romanNumerals.toRoman(401), "CDI")
        XCTAssertEqual(romanNumerals.toRoman(991), "CMXCI")
        XCTAssertEqual(romanNumerals.toRoman(1001), "MI")

        // test numbers ending with 3 as final digit
        XCTAssertEqual(romanNumerals.toRoman(13), "XIII")
        XCTAssertEqual(romanNumerals.toRoman(33), "XXXIII")
        XCTAssertEqual(romanNumerals.toRoman(43), "XLIII")
        XCTAssertEqual(romanNumerals.toRoman(53), "LIII")
        XCTAssertEqual(romanNumerals.toRoman(63), "LXIII")
        XCTAssertEqual(romanNumerals.toRoman(103), "CIII")
        XCTAssertEqual(romanNumerals.toRoman(113), "CXIII")
        XCTAssertEqual(romanNumerals.toRoman(143), "CXLIII")
        XCTAssertEqual(romanNumerals.toRoman(193), "CXCIII")
        XCTAssertEqual(romanNumerals.toRoman(403), "CDIII")
        XCTAssertEqual(romanNumerals.toRoman(993), "CMXCIII")
        XCTAssertEqual(romanNumerals.toRoman(1003), "MIII")
        XCTAssertEqual(romanNumerals.toRoman(2003), "MMIII")

        // test numbers ending with 4 as final digit
        XCTAssertEqual(romanNumerals.toRoman(14), "XIV")
        XCTAssertEqual(romanNumerals.toRoman(34), "XXXIV")
        XCTAssertEqual(romanNumerals.toRoman(44), "XLIV")
        XCTAssertEqual(romanNumerals.toRoman(54), "LIV")
        XCTAssertEqual(romanNumerals.toRoman(64), "LXIV")
        XCTAssertEqual(romanNumerals.toRoman(104), "CIV")
        XCTAssertEqual(romanNumerals.toRoman(114), "CXIV")
        XCTAssertEqual(romanNumerals.toRoman(144), "CXLIV")
        XCTAssertEqual(romanNumerals.toRoman(194), "CXCIV")
        XCTAssertEqual(romanNumerals.toRoman(404), "CDIV")
        XCTAssertEqual(romanNumerals.toRoman(994), "CMXCIV")
        XCTAssertEqual(romanNumerals.toRoman(1004), "MIV")
        XCTAssertEqual(romanNumerals.toRoman(2004), "MMIV")

        // test numbers ending with 5 as final digit
        XCTAssertEqual(romanNumerals.toRoman(15), "XV")
        XCTAssertEqual(romanNumerals.toRoman(35), "XXXV")
        XCTAssertEqual(romanNumerals.toRoman(45), "XLV")
        XCTAssertEqual(romanNumerals.toRoman(55), "LV")
        XCTAssertEqual(romanNumerals.toRoman(65), "LXV")
        XCTAssertEqual(romanNumerals.toRoman(105), "CV")
        XCTAssertEqual(romanNumerals.toRoman(115), "CXV")
        XCTAssertEqual(romanNumerals.toRoman(145), "CXLV")
        XCTAssertEqual(romanNumerals.toRoman(195), "CXCV")
        XCTAssertEqual(romanNumerals.toRoman(405), "CDV")
        XCTAssertEqual(romanNumerals.toRoman(995), "CMXCV")
        XCTAssertEqual(romanNumerals.toRoman(1005), "MV")
        XCTAssertEqual(romanNumerals.toRoman(2005), "MMV")
        
        // test numbers ending with 6 as final digit
        XCTAssertEqual(romanNumerals.toRoman(16), "XVI")
        XCTAssertEqual(romanNumerals.toRoman(36), "XXXVI")
        XCTAssertEqual(romanNumerals.toRoman(46), "XLVI")
        XCTAssertEqual(romanNumerals.toRoman(56), "LVI")
        XCTAssertEqual(romanNumerals.toRoman(66), "LXVI")
        XCTAssertEqual(romanNumerals.toRoman(106), "CVI")
        XCTAssertEqual(romanNumerals.toRoman(116), "CXVI")
        XCTAssertEqual(romanNumerals.toRoman(146), "CXLVI")
        XCTAssertEqual(romanNumerals.toRoman(196), "CXCVI")
        XCTAssertEqual(romanNumerals.toRoman(406), "CDVI")
        XCTAssertEqual(romanNumerals.toRoman(996), "CMXCVI")
        XCTAssertEqual(romanNumerals.toRoman(1006), "MVI")
        XCTAssertEqual(romanNumerals.toRoman(2006), "MMVI")

        // test numbers ending with 7 as final digit
        XCTAssertEqual(romanNumerals.toRoman(17), "XVII")
        XCTAssertEqual(romanNumerals.toRoman(37), "XXXVII")
        XCTAssertEqual(romanNumerals.toRoman(47), "XLVII")
        XCTAssertEqual(romanNumerals.toRoman(57), "LVII")
        XCTAssertEqual(romanNumerals.toRoman(67), "LXVII")
        XCTAssertEqual(romanNumerals.toRoman(107), "CVII")
        XCTAssertEqual(romanNumerals.toRoman(117), "CXVII")
        XCTAssertEqual(romanNumerals.toRoman(147), "CXLVII")
        XCTAssertEqual(romanNumerals.toRoman(197), "CXCVII")
        XCTAssertEqual(romanNumerals.toRoman(407), "CDVII")
        XCTAssertEqual(romanNumerals.toRoman(997), "CMXCVII")
        XCTAssertEqual(romanNumerals.toRoman(1007), "MVII")
        XCTAssertEqual(romanNumerals.toRoman(2007), "MMVII")
        
        // test numbers ending with 9 as final digit
        XCTAssertEqual(romanNumerals.toRoman(19), "XIX")
        XCTAssertEqual(romanNumerals.toRoman(39), "XXXIX")
        XCTAssertEqual(romanNumerals.toRoman(49), "XLIX")
        XCTAssertEqual(romanNumerals.toRoman(59), "LIX")
        XCTAssertEqual(romanNumerals.toRoman(69), "LXIX")
        XCTAssertEqual(romanNumerals.toRoman(109), "CIX")
        XCTAssertEqual(romanNumerals.toRoman(119), "CXIX")
        XCTAssertEqual(romanNumerals.toRoman(149), "CXLIX")
        XCTAssertEqual(romanNumerals.toRoman(199), "CXCIX")
        XCTAssertEqual(romanNumerals.toRoman(409), "CDIX")
        XCTAssertEqual(romanNumerals.toRoman(999), "CMXCIX")
        XCTAssertEqual(romanNumerals.toRoman(1009), "MIX")
        XCTAssertEqual(romanNumerals.toRoman(2009), "MMIX")
        
        // test years
        XCTAssertEqual(romanNumerals.toRoman(1642), "MDCXLII")
        XCTAssertEqual(romanNumerals.toRoman(1865), "MDCCCLXV")
        XCTAssertEqual(romanNumerals.toRoman(1945), "MCMXLV")
        XCTAssertEqual(romanNumerals.toRoman(1963), "MCMLXIII")
        XCTAssertEqual(romanNumerals.toRoman(1974), "MCMLXXIV")
        XCTAssertEqual(romanNumerals.toRoman(1990), "MCMXC")
        XCTAssertEqual(romanNumerals.toRoman(1999), "MCMXCIX")
        XCTAssertEqual(romanNumerals.toRoman(2001), "MMI")
        XCTAssertEqual(romanNumerals.toRoman(2008), "MMVIII")
        XCTAssertEqual(romanNumerals.toRoman(2010), "MMX")
        XCTAssertEqual(romanNumerals.toRoman(2016), "MMXVI")
        XCTAssertEqual(romanNumerals.toRoman(2017), "MMXVII")

    }
}
