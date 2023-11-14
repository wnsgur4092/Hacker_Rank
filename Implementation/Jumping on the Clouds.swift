import Foundation

/*
 * Complete the 'jumpingOnClouds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY c as parameter.
 */

func jumpingOnClouds(c: [Int]) -> Int {
    // Write your code here
    var i = 0
    var output = 0

    while i < c.count - 1 {
        if i + 2 < c.count && c[i+2] == 0 {
            i += 2
        } else {
            i += 1
        }
        output += 1
    }

    return output
    
}

let c = [0, 0, 0, 1, 0, 0]
let example = jumpingOnClouds(c: c)
print(example)