import Foundation

/*
 * Complete the 'marcsCakewalk' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts INTEGER_ARRAY calorie as parameter.
 */

func marcsCakewalk(calorie: [Int]) -> Int {
    // Write your code here
    var n = 0
    var total = 0
    let sortedCalorie = Array(calorie.sorted().reversed())

    for calorie in sortedCalorie {
        let a = Double(calorie) * pow(Double(2), Double(n))
        total += Int(a)
        n += 1
    }
    return total
}

print(marcsCakewalk(calorie: [7 ,4 ,9, 6]))