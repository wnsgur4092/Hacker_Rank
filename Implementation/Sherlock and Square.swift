import Foundation

/*
 * Complete the 'squares' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER a
 *  2. INTEGER b
 */

func squares(a: Int, b: Int) -> Int {
    // Write your code here
    let first = Int(ceil(sqrt(Double(a))))
    let second = Int(floor(sqrt(Double(b))))

    return max(0, second - first + 1)
}

let a = 3
let b = 9
let example = squares(a: a, b: b)
print(example)