import Foundation

/*
 * Complete the 'repeatedString' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts following parameters:
 *  1. STRING s
 *  2. LONG_INTEGER n
 */

func repeatedString(s: String, n: Int) -> Int {
    // Write your code here
    let countA = s.filter{ $0 == "a"}.count
    let fullRepeats = n / s.count
    let remainder = n % s.count

    let total = fullRepeats * countA + s.prefix(remainder).filter{$0 == "a"}.count

    return total
}

// 예제 실행
let s = "aba"
let n = 10
let result = repeatedString(s: s, n: n)
print(result) // 출력: 4