import Foundation

/*
 * Complete the 'minimumDistances' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func minimumDistances(a: [Int]) -> Int {
    // Write your code here
    var minimum = Int.max

    for i in 0..<a.count{
        for j in (i+1)..<a.count{
            if a[i] == a[j] {
                minimum = min(minimum, j - i)
                // print(minimum)
            }
        }
    }
    if minimum == Int.max{
        return -1
    } else {
        return minimum
    }
    
}

let a = [7,1,3,4,1,7]
let example = minimumDistances(a: a)
print(example)