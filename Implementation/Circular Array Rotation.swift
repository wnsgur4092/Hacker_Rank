import Foundation

/*
 * Complete the 'circularArrayRotation' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER k
 *  3. INTEGER_ARRAY queries
 */

func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    // let rotationNum = a.count
    var array = a

    for _ in 1...k{
        let lastNum = array.removeLast()
        array.insert(lastNum, at: 0)
    }

    // print(array) 

    var result = [Int]()
    for query in queries {
        result.append(array[query])
    }

    return result
}

let a = [1, 2, 3]
let k = 2
let queries = [1,2]

let example = circularArrayRotation(a: a, k: k, queries: queries)
print(example)