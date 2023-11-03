import Foundation

/*
 * Complete the 'breakingRecords' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY scores as parameter.
 */

// func breakingRecords(scores: [Int]) -> [Int] {
//     // Write your code here
//     var newArray = Set(scores)   
//     print(new)
// }

func breakingRecords(scores: [Int]) -> [Int] {
    // Initialize the record variables.
    var high = scores.first!
    var low = scores.first!

    print(high)
    print(low)

    var max = 0
    var min = 0

    for score in scores {
        if score > high {
            high = score
            print("highest:\(high)" )
            max += 1
        } else if score < low {
            low = score
            print("lowest:\(low)" )
            min += 1
        }
    }

    // Return the counts in an array.
    return [max, min]
}

let scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]
let recordBreaks = breakingRecords(scores: scores)
print(recordBreaks) // Output should be [2, 4] for the example given.

