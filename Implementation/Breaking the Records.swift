import Foundation

func breakingRecords(scores: [Int]) -> [Int] {
    // Initialize the record variables.
    var high = scores.first!
    var low = scores.first!

    // print(high)
    // print(low)

    var max = 0
    var min = 0

    for score in scores {
        if score > high {
            high = score
            // print("highest:\(high)" )
            max += 1
        } else if score < low {
            low = score
            // print("lowest:\(low)" )
            min += 1
        }
    }
    return [max, min]
}

let scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]
let recordBreaks = breakingRecords(scores: scores)
print(recordBreaks)

