//
//  main.swift
//  CodeTest
//
//  Created by JunHyuk Lim on 2/1/2024.
//

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    let leftRight = arr[0][0] + arr[1][1] + arr[2][2]
    let rightLeft = arr[0][2] + arr[1][1] + arr[2][0]
    
    return abs(leftRight - rightLeft)
}

