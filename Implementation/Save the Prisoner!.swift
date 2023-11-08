import Foundation

/*
 * Complete the 'saveThePrisoner' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER m
 *  3. INTEGER s
 */

func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    // Write your code here
    let result = (m-1 + s-1) % n + 1
    return result
}

let n = 3
let m = 7
let s = 3
let example = saveThePrisoner(n: n, m: m, s: s)
print(example)