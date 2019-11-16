//
//  Hugo Unknown.swift
//  Standard Algorithms
//
//  Created by Dunlop, Hugo (PEPW) on 14/11/2019.
//  Copyright © 2019 Manners, William (Coll). All rights reserved.
//

import Foundation

class Hugo {
    
    func sumOfFirstAndLast(array: [Int]) -> Int {
        if array.count == 1 {return (array[0] * 2)}
        else if array.count == 0 {return 0)}
        else {return (array[0] + array[array.count - 1]}
    }
    
    func findModeFromUnsortedArray(array: [Int]) -> Int {
        if array.count == 0 {return 0}
        else if array.count == 1 {return array[0]}
        else {
            var counter = 0
            var modeFinder: [Int] = []
            var mode = 0
            var current = 0
            var loop = true
            for i in 0..<array.count - 1 {
                current = array[i]
                while loop {
                    for j in 1..<array.count - 1 {
                        if array[j] == array[i] {counter += 1}
                        else if array[j] > array[i] {
                            loop = false
                        }
                    }
                }
                modeFinder.append([current, counter])
            }
            current = modeFinder[0]
            for x in 0..<modeFinder.count - 1 {
                if current[1] < modeFinder[x][1] {
                    current = modeFinder[x]
                }
            }
            return (current[0])
        }
    }
    
    func findSecondSmallestValue(array: [Int]) -> Int {
        if array.count < 2 {return nil}
        else {
            var current = array[0]
            for i in 1..<array.count - 1 {
                if current > array[i] {
                    current = array[i]
                }
            }
            let newarray = array.filter() {$0 != (current)}
            current = newarray[0]
            for i in 1..<newarray.count - 1 {
                if current > newarray[i] {
                    current = newarray[i]
                }
            }
            return current
        }
    }
    
    func findModeWithUnsortedArray(array: [Int]) -> Int {
        if array.count == 0 {return 0}
        else if array.count == 1 {return array[0]}
        else {
            var counter = 0
            var modeFinder: [Int] = []
            var mode = 0
            var current = 0
            for i in 0..<array.count - 1 {
                current = array[i]
                for j in 1..<array.count - 1 {
                    if array[j] == array[i] {
                        counter += 1
                    }
                }
                modeFinder.append([current, counter])
            }
            current = modeFinder[0]
            for x in 0..<modeFinder.count - 1 {
                if current[1] < modeFinder[x][1] {
                    current = modeFinder[x]
                }
            }
            return (current[0])
        }
    }
}
