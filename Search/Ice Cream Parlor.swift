import Foundation

/*
 * Complete the 'icecreamParlor' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER m
 *  2. INTEGER_ARRAY arr
 */

func icecreamParlor(m: Int, arr: [Int]) -> [Int] {
    // Write your code here
    let iceCreams = arr

    var result = [Int]()

    for i in 0..<iceCreams.count{
        for j in i+1..<iceCreams.count {
            if iceCreams[i] + iceCreams[j] == m{
                result.append(i + 1)
                result.append(j + 1)
                return result
            }  
        }
    }

    return result
}

let m = 6
let arr = [1, 3, 4, 5, 6]
let result = icecreamParlor(m: m, arr: arr)
print(result) 