import Foundation

/*
 * Complete the 'divisibleSumPairs' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER k
 *  3. INTEGER_ARRAY ar
 */

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    // Write your code here
    var output = 0

    for i in 0..<(n-1){
        for j in (i+1)..<n {
            let result = ar[i]+ar[j]
            if result % k == 0 {
                output += 1
            }
        }
    }

    return output 
}

let result = divisibleSumPairs(n: 6, k: 5, ar: [1,2,3,4,5,6])
print(result)