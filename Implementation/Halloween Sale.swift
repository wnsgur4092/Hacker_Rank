import Foundation

/*
 * Complete the 'howManyGames' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER p
 *  2. INTEGER d
 *  3. INTEGER m
 *  4. INTEGER s
 */

func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
    var total = p
    var price = p 
    var count = 0

    while total < s || total == s{
        if (price - d) > m {
            price = price - d
            total = total + price
            count += 1
        } else {
            total = total + m
            count += 1
        }
    }
    
    return count
}

let p = 20
let d = 3
let m = 6
let s = 85
let example = howManyGames(p: p, d: d, m: m, s: s)
print(example)