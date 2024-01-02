//
//  main.swift
//  CodeTest
//
//  Created by JunHyuk Lim on 2/1/2024.
//

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    let n = arr.count

    var leftRight = 0
    var rightLeft = 0
    
    
    for i in 0..<n{
        leftRight += arr[i][i]
        rightLeft += arr[i][n-i-1]
    }
    
    return abs(leftRight - rightLeft)
}
