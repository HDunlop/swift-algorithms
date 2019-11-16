//
//  StandardAlgorithmsTests.swift
//  StandardAlgorithmsTests
//
//  Created by Dunlop, Hugo (PEPW) on 05/11/2019.
//  Copyright © 2019 Dunlop, Hugo (PEPW). All rights reserved.
//

import XCTest

class StandardAlgorithmsTests: XCTestCase {
    
    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        let sorting = Sorting()
        let TestCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]), (input: [10, 30, 20, 40, 50], expected: [10, 20 ,30, 40 ,50]), (input: [19, 3, 58, 92, 40], expected: [3, 19, 40, 58, 92])]
        for TestCase in TestCases {
            let actual = sorting.bubbleSort(array: TestCase.input)
            XCTAssertEqual(actual, TestCase.expected)
        }
    }
    
    func testBinaryChopWithMultipleIntegerArraysAndNumbersToSearchReturnsExpectedBooleanValue() {
        let sorting = Sorting()
        let TestCases = [(array: [10, 3, 2, 7, 1], num: 0, expected: false), (array: [10, 3, 2, 7, 1], num: 1, expected: true), (array: [19, 3, 58, 92, 40], num: 28, expected: false), (array: [19, 3, 58, 92, 40], num: 3, expected: true)]
        for TestCase in TestCases {
            let actual = sorting.binaryChop(array: TestCase.array, num: TestCase.num)
            XCTAssertEqual(actual, TestCase.expected)
        }
    }
    
    func testQuickSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]), (input: [10, 30, 20, 40, 50], expected: [10, 20 ,30, 40 ,50]), (input: [19, 3, 58, 92, 40], expected: [3, 19, 40, 58, 92])]
        for TestCase in testCases {
            let actual = sorting.quickSort(array: TestCase.input)
            XCTAssertEqual(actual, TestCase.expected)
        }
    }
    
    func testInsertionSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        let sorting = Sorting()
        let testCases = [(input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]), (input: [10, 30, 20, 40, 50], expected: [10, 20 ,30, 40 ,50]), (input: [19, 3, 58, 92, 40], expected: [3, 19, 40, 58, 92])]
        for TestCase in testCases {
            let actual = sorting.insertionSort(array: TestCase.input)
            XCTAssertEqual(actual, TestCase.expected)
        }
    }
    
    func testPerformanceOfBubbleSortWithSmallIntegerArray() {
        //arrange
        let data = [4,5,6,1,2,3,6]
        let sorting = Sorting()
        
        measure {
            _ = sorting.bubbleSort(array: data)
        }
    }
    
//    func testLinearSearchWithMultipleIntegerArraysAndNumbersToSearchReturnsExpectedBooleanValue() {
//        let sorting = Sorting()
//        let TestCases = [[array: [10, 3, 2, 7, 1], num: 0, expected: false], [array: [10, 3, 2, 7, 1], num: 1, expected: true], [array: [19, 3, 58, 92, 40], num: 28, expected: false], [array: [19, 3, 58, 92, 40], num: 3, expected: true]]
//        for TestCase in TestCases {
//            let actual = sorting.linearSearch(array: TestCase.array, num: TestCase.num)
//            XCTAssertEqual(actual, TestCase.expected)
//        }
//    }
//
//    func testMergeSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
//        let sorting = Sorting()
//        let TestCases = [[input: [10, 3, 2, 7, 1], expected: [1, 2, 3, 7, 10]], [input: [10, 30, 20, 40, 50], expected: [10, 20 ,30, 40 ,50]], [input: [19, 3, 58, 92, 40], expected: [3, 19, 40, 58, 92]]]
//        for TestCase in TestCases {
//            let actual = sorting.mergeSort(array: TestCase.input)
//            XCTAssertEqual(actual, testCase.expected)
//        }
//    }
//
//    func testMergeFunctionReturnsSortedAndMergedArrayFromMultipleSetsOfTwoSortedArrays() {
//        let sorting = Sorting()
//        let TestCases = [[left: [2, 5], right: [3, 9], expected: [2, 3, 5, 9]], [left: [13, 59], right: [1, 94], expected: [1, 13, 59, 94]], [left: [32, 35], right: [40, 50], expected: [32, 35, 40, 50]]]
//        for TestCase in TestCases {
//            let actual = sorting.merge(left: TestCase.left, right: TestCase.right)
//            XCTAssertEqual(actual, testCase.expected)
//        }
//    }
//
}
