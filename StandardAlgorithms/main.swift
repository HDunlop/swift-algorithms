//
//  main.swift
//  StandardAlgorithms
//
//  Created by Dunlop, Hugo (PEPW) on 05/11/2019.
//  Copyright © 2019 Dunlop, Hugo (PEPW). All rights reserved.
//

import Foundation

print("""
Searching Algorithms:
1. Binary Search:
It repeatedly splits an array passed into the function as a parameter in half, and checks if that value is the number to find. If the number in the array is the number to find, the function returns a positive boolean value which indicates that it has been found. If it is larger, the larger half of the array is discarded. The inverse happens if it is smaller. This will carry on going until the number is found or all the array has been discarded, in which case it returns a negative boolean value. It is worth noting that the array needs to be sorted.
Time complexity in best case is O(1); average case and worst case are both O(log(n)).
Space complexity is always O(1).

2. Linear Search:
The function cycles through all the values in the array passed into it as a parameter until it finds the number to find. If it does not, it returns a negative boolean value. If it does, it returns a positive one and the function ends. The array does not need to be sorted.
Time complexity in best case is O(1); average and worst case are O(n).
Space complexity is always O(1).

Sorting Algorithms:
1. Bubble Sort:
It compares each value in the array to the next. If it is larger, they switch. If it is smaller, the value being compared increments to the next one. It loops through until there are no more switches, and finally returns the sorted array.
Time complexity in best case is O(n); average and worst case are O(n^2).
Space complexity is always O(1).

2. Quick Sort:
The function selects the first number in the array passed into it as a parameter and compares all the other values to it. Any which are less than the "pivot" are appended to the left of the pivot (which is immediately counted as "sorted"), and the larger ones are appended to the right. Each of these "lists" of larger and smaller numbers are recursively put back into the function until the new "lists" are of length one, and those and the pivot are ultimately returned to the original array, which is returned as sorted.
Time complexity in best and average case are O(nlog(n)) and worst case is O(n^2).
Space complexity is O(log(n)).

3. Insertion Sort:
The function cycles through all the values in the paramter array starting from the second. Each time it compares it with the previous values until it finds one that is larger than itself. Then it moves to the front of all the larger values, or does not move at all. This repeats until all the values in the array have been checked, and then the function returns the newly sorted array.
Time complexity in best case is O(n) and average and worst case are O(n^2).
Space complexity is O(1).

4. Merge Sort:
The first function recursively divides the parameter array into arrays of length one, and then returns the output of a second function which merges two paramter arrays into a sorted, larger array.
Time complexity is always O(nlog(n).
Space complexity is O(n).
""")
