import Foundation

/*
 * Complete the 'chocolateFeast' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER c
 *  3. INTEGER m
 */

func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
    var chocolates = n / c

    var wrappers = chocolates

    while wrappers >= m {
        let exchanged = wrappers / m
        chocolates += exchanged
        wrappers = exchanged + (wrappers % m)
        print(wrappers)
    }

    return chocolates
}

let n = 10
let c =  2
let m = 5
let example = chocolateFeast(n: n, c: c, m: m)
print(example)