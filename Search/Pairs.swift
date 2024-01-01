import Foundation

/*
 * Complete the 'pairs' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY arr
 */

func pairs(k: Int, arr: [Int]) -> Int {
    var count = 0
    let set = Set(arr)

    for number in arr {
        if set.contains(number + k) {
            count += 1
        }
    }

    return count
}
