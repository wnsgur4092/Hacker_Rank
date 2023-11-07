 import Foundation

/*
 * Complete the 'beautifulDays' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER i
 *  2. INTEGER j
 *  3. INTEGER k
 */

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var beautifulDaysCount = 0

    for day in i...j {
        var reversedDay = 0
        var tempDay = day
        
        // Reverse the digits using arithmetic operations
        while tempDay > 0 {
            reversedDay = reversedDay * 10 + tempDay % 10
            tempDay /= 10
        }
        
        // Check if the absolute difference is divisible by k
        if (day - reversedDay) % k == 0 {
            beautifulDaysCount += 1
        }
    }

    return beautifulDaysCount
}

//EXAMPLE
let i = 20
let j = 23
let k = 6
let example = beautifulDays(i: i, j:j, k:k)
print(example)