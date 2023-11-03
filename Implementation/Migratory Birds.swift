import Foundation

/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func migratoryBirds(arr: [Int]) -> Int {
    // The maximum bird type is assumed to be 5 as per the problem's constraints.
    var countArray = Array(repeating: 0, count: 6)
    
    // Increment the count for each bird spotted.
    for bird in arr {
        countArray[bird] += 1
    }
    
    // Find the bird type with the maximum count.
    var maxCount = 0
    var maxBirdType = 1
    for birdType in 1..<countArray.count {
        if countArray[birdType] > maxCount {
            maxCount = countArray[birdType]
            maxBirdType = birdType
        }
    }
    
    return maxBirdType
}