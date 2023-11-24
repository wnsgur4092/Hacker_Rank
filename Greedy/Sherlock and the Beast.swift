import Foundation

/*
 * Complete the 'decentNumber' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func decentNumber(n: Int) -> Void {
    var fives = n

    while fives % 3 != 0 {
        fives -= 5
    }

    if fives < 0 {
        print("-1")
    } else {
        let threes = n - fives
        let number = String(repeating: "5", count: fives) + String(repeating: "3", count: threes)
        print(number)
    }
}

// 예제 사용
print(decentNumber(n: 3))  // "555"
print(decentNumber(n: 1))  // "-1"
print(decentNumber(n: 11)) // "55555533333"