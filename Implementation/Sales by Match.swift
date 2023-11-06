import Foundation

/*
 * Complete the 'sockMerchant' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER_ARRAY ar
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    let sortedSocks = ar.sorted()
    var index = 0 
    var pair = 0 

    while index < n-1 {
        if sortedSocks[index] == sortedSocks[index + 1] {
            pair += 1 
            index += 2
        } else {
            index += 1
        }
    }

    return pair
}

let numberOfSocks = 9
let socks = [10, 20, 20, 10, 10, 30, 50, 10, 20]
let output = sockMerchant(n: numberOfSocks, ar: socks)
print(output)