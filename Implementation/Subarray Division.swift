import Foundation

/*
 * Complete the 'birthday' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY s
 *  2. INTEGER d
 *  3. INTEGER m
 */

func birthday(s: [Int], d: Int, m: Int) -> Int {
    // Write your code here
    let n = s.count
    var output = 0

    for i in 0...(n-m){
        let sum = s[i..<i+m].reduce(0,+)
        if sum == d {
            output += 1
        }
    }

    return output
}

// Example
let chocolateSquares = [1, 2, 1, 3, 2]
let day = 3
let month = 2
let result = birthday(s: chocolateSquares, d: day, m: month)
print(result)