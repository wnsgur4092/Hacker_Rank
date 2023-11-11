import Foundation

/*
 * Complete the 'appendAndDelete' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. STRING s
 *  2. STRING t
 *  3. INTEGER k
 */

func appendAndDelete(s: String, t: String, k: Int) -> String {
    let first = Array(s)
    let second = Array(t)

    var same = 0 
    for i in 0..<min(first.count, second.count) {
        if first[i] == second[i] {
            same += 1
        } else {
            break
        }
    }

    let totalLength = first.count + second.count
    let diff = totalLength - 2 * same

    if diff > k {
        return "No"
    } else if (diff % 2 == k % 2) || (totalLength < k) {
        return "Yes"
    } else {
        return "No"
    }
}


let s = "hackerhappy"
let t = "hackerrank"
let k = 9

let output = appendAndDelete(s: s, t: t, k: k)
print(output)