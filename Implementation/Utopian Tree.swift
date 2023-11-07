import Foundation

/*
 * Complete the 'utopianTree' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER n as parameter.
 */

func utopianTree(n: Int) -> Int {
    // Write your code here
    var arr :[Int] = []
    var height = 0

    for i in 0...n {
        if i % 2 == 0 {
            height += 1
            arr.append(height)
        } else {
            height = height * 2
            arr.append(height)
        }
    }

    return arr[n]
}

let n = 
let result = utopianTree(n: n)
print(result)