import Foundation

/*
 * Complete the 'twoArrays' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY A
 *  3. INTEGER_ARRAY B
 */

func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
    // Write your code here
    let sortedA = A.sorted(by: <)
    let sortedB = B.sorted(by: > )
    var count = 0 

    for i in 0..<A.count{
        if sortedA[i] + sortedB[i] >= k {
            count += 1
        }
    }

    if count == sortedA.count{
        return "YES"
    } else {
        return "NO"
    }
}

print(twoArrays(k: 10, A: [2,1,3], B: [7,8,9]))