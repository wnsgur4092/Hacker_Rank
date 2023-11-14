import Foundation

/*
 * Complete the 'equalizeArray' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func equalizeArray(arr: [Int]) -> Int {
    var frequency = [Int: Int]()

    // Count the frequency of each element
    for num in arr {
        frequency[num, default: 0] += 1
    }

    // Find the maximum frequency
    let maxFrequency = frequency.values.max() ?? 0

    // The minimum number of deletions is the total count minus the max frequency
    return arr.count - maxFrequency
}


let arr = [3,3,2,1,3]
let example = equalizeArray(arr: arr)
print(example)