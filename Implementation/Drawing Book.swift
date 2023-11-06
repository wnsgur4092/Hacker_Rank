import Foundation

/*
 * Complete the 'pageCount' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER p
 */

func pageCount(n: Int, p: Int) -> Int {
    // Write your code here
    let front = p / 2
    let back = n / 2 - p / 2 

    return min(front,back)
}

// Example usage:
let totalPages = 5
let desiredPage = 4
let minimumTurns = pageCount(n: totalPages, p: desiredPage)
print(minimumTurns) // Should print the minimum number of turns needed to reach the desired page


