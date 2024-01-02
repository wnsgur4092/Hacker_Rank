import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    let x = arr.sorted(by: <)
    let y = arr.sorted(by: >)

    var maximum = 0
    var minimum = 0
    
    for i in 0..<4{
        maximum += y[i]
        minimum += x[i]
    }
    
    print(minimum, maximum)
}

miniMaxSum(arr: [1,2,3,4,5])