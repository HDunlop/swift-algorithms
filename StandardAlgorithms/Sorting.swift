//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Dunlop, Hugo (PEPW) on 07/11/2019.
//  Copyright © 2019 Dunlop, Hugo (PEPW). All rights reserved.
//

import Foundation

class Sorting {

    func bubbleSort(array : [Int]) -> [Int] {
        
        var sortedArray: [Int] = array
        var sorted = false
        var temp = 0
        while !sorted {
            sorted = true
            for i in 0..<(sortedArray.count - 1) {
                if sortedArray[i] > sortedArray[i + 1] {
                    temp = sortedArray[i]
                    sortedArray[i] = sortedArray[i + 1]
                    sortedArray[i + 1] = temp
                    sorted = false
                }
            }
        }
        return sortedArray
        
    }
    
    func binaryChop(array: [Int], num: Int) -> Bool {
        
          var found = false
          var first = 0
          var last = array.count - 1
          while (first < last) && (found == false) {
                let (mid, _) = (first + last).quotientAndRemainder(dividingBy: 2)
                if array[first] == num {found = true}
                else if array[last] == num {found = true}
                else if array[mid] == num {found = true}
                else if array[mid] > num {last = mid - 1}
                else {first = mid + 1}
          }
        
          return found
        
    }
    
    func quickSort(array: [Int]) -> [Int] {
        
          if array.count <= 1 {return(array)}
            
          else {
                var sorted: [Int] = []
                var left: [Int] = []
                var right: [Int] = []
                let pivot = array[0]
                for i in 1..<(array.count) {
                      if array[i] > pivot {right.append(array[i])}
                      else {left.append(array[i])}
                }
                if left.count == 1 {sorted.append(left[0])}
                else {
                    sorted.append(contentsOf: quickSort(array: left))
                }
            
                sorted.append(pivot)
            
                if right.count == 1 {sorted.append(right[0])}
                else {
                    sorted.append(contentsOf: quickSort(array: right))
                }
                return sorted
          }
        
    }
    
    func insertionSort(array: [Int]) -> [Int] {
        
          var newArray: [Int] = array
          for i in 1..<newArray.count {
                let current = newArray[i]
                var j = i - 1
                while (j >= 0) && (newArray[j] > current) {
                    newArray[j + 1] = newArray[j]
                    j -= 1
                }
                newArray[j + 1] = current
          }
          return newArray
        
    }
    
    func linearSearch(array: [Int], num: Int) -> Bool {
        var found = false
        while !found {
            for integer in array {
                if num == integer {
                    found = true
                }
            }
        }
        return found
        
    }
    
    
    
    
    func mergeSort(array: [Int]) -> [Int] {
          var rightArray: [Int] = []
          var leftArray: [Int] = []
          if array.count == 0 {return array}
          else {
                let mid = (array.count) / 2
                leftArray = mergeSort(array: Array(array[0..<mid]))
                rightArray = mergeSort(array: Array(array[mid..<array.count]))
          }
          return merge(left: leftArray, right: rightArray)
    }

    func merge(left: [Int], right: [Int]) -> [Int] {
          var rightIndex = 0
          var leftIndex = 0
          var sorted: [Int] = []
          var done = false
          while !done {
                if rightIndex == right.count {
                      for i in leftIndex..<left.count {
                            sorted.append(left[i])
                            done = true
                      }
                } else if leftIndex == left.count {
                      for i in rightIndex..<right.count {
                            sorted.append(right[i])
                            done = true
                      }
                } else if right[rightIndex] < left[leftIndex] {
                      sorted.append(right[rightIndex])
                      rightIndex += 1
                      done = false
                } else {
                      sorted.append(left[leftIndex])
                      leftIndex += 1
                      done = false
                }
          }
          return sorted
        
    }
    
}
