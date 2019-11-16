//
//  Hugo Unknown Test.swift
//  Standard Algorithms
//
//  Created by Dunlop, Hugo (PEPW) on 14/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import XCTest

class Hugo: XCTestCase {
    
    func testProblemOneReturnsCorrectSumOfFirstAndLastDigitsOfMultipleParamterArray() {
        let hugo = Hugo()
        let TestCases = [[input: [5, 12, 56, 86, 99], expected: 104], [input: [1, 2, 3, 4, 5], expected: 6], [input: [102, 103, 230, 5420, 3450423], expected: 3450525], [input: [Int](), expected: 0], [input: [9], expected: 18]]
        for TestCase in TestCases {
            let actual = hugo.sumOfFirstAndLast(array: TestCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testModeFinderFromUnsortedArrayFunctionReturnsCorrectModeWithMultipleArrays() {
        let hugo = Hugo()
        let TestCases = [[input: [4, 4, 5, 5, 5], expected: 5], [input: [1, 2, 6, 6, 9], expected: 6], [input: [Int](), expected: 0], [input: [1], expected: 1], [input: [1, 2, 3, 4, 5, 5, 5, 5, 6, 6, 6, 6], expected: 5]]
        for TestCase in TestCases {
            let actual = hugo.findMode(array: TestCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testFindSecondSmallestValueReturnsCorrectValueWithMultipleArrays() {
        let hugo = Hugo()
        let TestCases = [[input: [5, 5, 5, 4, 4], expected: 5], [input: [1, 2, 6, 6, 9], expected: 2], [input: [1], expected: nil], [input: [1, 7], expected: 7]]
        for TestCase in TestCases {
            let actual = hugo.findSecondSmallestValue(array: TestCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testModeFinderFromSortedArrayFunctionReturnsCorrectModeWithMultipleArrays() {
        let hugo = Hugo()
        let TestCases = [[input: [5, 5, 5, 4, 4], expected: 5], [input: [1, 7, 6, 2, 6, 1, 6, 9], expected: 6], [input: [Int](), expected: 0], [input: [1], expected: 1]]
        for TestCase in TestCases {
            let actual = hugo.findMode(array: TestCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testf
    
}

