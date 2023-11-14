import Foundation

/*
 * Complete the 'beautifulTriplets' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER d
 *  2. INTEGER_ARRAY arr
 */

func beautifulTriplets(d: Int, arr: [Int]) -> Int {
    // Write your code here
    let set = Set(arr)
    var count = 0
    
    // print(set)

    for i in arr{
        if set.contains(i + d) && set.contains(i + 2 * d){
            count += 1
        }
    }

    return count
}

// Example usage
let arr = [1, 2, 4, 5, 7, 8, 10]
let d = 3
print(beautifulTriplets(d: d, arr: arr))  // Output will be the count of beautiful triplets