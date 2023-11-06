import Foundation

/*
 * Complete the 'hurdleRace' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY height
 */

func hurdleRace(k: Int, height: [Int]) -> Int {
    // Write your code here
    let maxHeight = height.max()!
    if k < maxHeight {
        let output = maxHeight - k
        return output
    } else {
        return 0
    }
}
