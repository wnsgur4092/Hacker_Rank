//
//  main.swift
//  CodeTest
//
//  Created by JunHyuk Lim on 2/1/2024.
//

import Foundation

func lonelyinteger(a: [Int]) -> Int {
    // Write your code here
    var dict = [Int: Int]()
    
    for number in a{
        dict[number, default: 0] += 1
    }
    
    let result = dict.filter{$0.value ==  1}.map{Int($0.key)}
    return result[0]
}

print(lonelyinteger(a: [1,2,3,4,3,2,1]))
