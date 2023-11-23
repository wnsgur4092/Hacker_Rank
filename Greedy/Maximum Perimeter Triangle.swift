import Foundation

/*
 * Complete the 'maximumPerimeterTriangle' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY sticks as parameter.
 */

func maximumPerimeterTriangle(sticks: [Int]) -> [Int] {
    let sortedSticks = sticks.sorted()

    for i in stride(from: sortedSticks.count - 3, through: 0, by: -1) {
        if sortedSticks[i] + sortedSticks[i + 1] > sortedSticks[i + 2] {
            return [sortedSticks[i], sortedSticks[i + 1], sortedSticks[i + 2]].sorted()
        }
    }

    return [-1] // 삼각형을 만들 수 없음
}

// 예제 사용
print(maximumPerimeterTriangle(sticks: [1, 1, 1, 3, 3])) // [1, 3, 3]


print(maximumPerimeterTriangle(sticks: [1, 2, 3, 4, 5, 10])) // [5, 4, 3]