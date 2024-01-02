//
//  main.swift
//  CodeTest
//
//  Created by JunHyuk Lim on 2/1/2024.
//
import Foundation

func timeConversion(s: String) -> String {
    // Write your code here
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    
    let time = dateFormatter.date(from: s)!
    
    dateFormatter.dateFormat = "HH:mm:ss"
    return dateFormatter.string(from: time)
}


print(timeConversion(s: "07:05:45PM"))
