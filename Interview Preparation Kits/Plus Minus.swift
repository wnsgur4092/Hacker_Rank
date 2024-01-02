import Foundation

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    let n = arr.count
    
    let plus = arr.filter{($0 > 0)}.count
    let minus = arr.filter{($0 < 0)}.count
    let zero = arr.filter{($0 == 0)}.count
    
    
    print(String(format: "%.6f", Double(plus) / Double(n)))
    print(String(format: "%.6f", Double(minus) / Double(n)))
    print(String(format: "%.6f", Double(zero) / Double(n)))

}

plusMinus(arr: [-4,-3,-9,0,4,1])