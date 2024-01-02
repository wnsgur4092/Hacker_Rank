//
//  main.swift
//  CodeTest
//
//  Created by JunHyuk Lim on 2/1/2024.
//
import Foundation

func findMedian(arr: [Int]) -> Int {
    // Write your code here
    let sortedArray = arr.sorted(by: <)
    let n = sortedArray.count

    return sortedArray[n / 2]
}

print(findMedian(arr: [0,1,2,4,6,5,3]))
