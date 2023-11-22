import Foundation

/*
 * Complete the 'fairRations' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts INTEGER_ARRAY B as parameter.
 */

func fairRations(B: [Int]) -> String {
    // Write your code here
    var b = B
    var count = 0 

    for i in 0..<b.count - 1 {
        if b[i] % 2 != 0 {
            b[i] += 1
            b[i+1] += 1
            count += 2
        }
    }
    if b.last! % 2 != 0 {
        return "NO"
    }
    
    return String(count)
}

// 예제 사용
print(fairRations(B: [2, 3, 4, 5, 6])) // "4"
