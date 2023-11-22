import Foundation

/*
 * Complete the 'strangeCounter' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts LONG_INTEGER t as parameter.
 */

func strangeCounter(t: Int) -> Int {
    var time = 1
    var length = 3

    while time + length <= t {
        time += length
        length *= 2
    }

    return length - (t - time)
}

let t = 10
print(strangeCounter(t: t))  // 출력: 카운터가 표시하는 숫자