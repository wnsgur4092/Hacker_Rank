import Foundation

/*
 * Complete the 'beautifulPairs' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY A
 *  2. INTEGER_ARRAY B
 */

func beautifulPairs(A: [Int], B: [Int]) -> Int {
    var B = B
    var beautifulPairs = 0

    for a in A {
        if let index = B.firstIndex(of: a) {
            beautifulPairs += 1
            B.remove(at: index)
        }
    }

    // 한 쌍을 변경하여 "아름다운 쌍"의 수를 최대화
    //모든 쌍이 이미 "아름다운 쌍"이라면, 한 쌍을 변경하여 "아름다운 쌍"의 수를 하나 줄입니다. 그렇지 않다면, 하나를 더해 최대화합니다.
    return beautifulPairs == A.count ? beautifulPairs - 1 : beautifulPairs + 1
}

// 예제 사용
print(beautifulPairs(A: [1, 2, 3, 4], B: [1, 2, 3, 3])) // 4


