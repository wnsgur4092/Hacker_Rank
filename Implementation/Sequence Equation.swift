import Foundation

/*
 * Complete the 'permutationEquation' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY p as parameter.
 */

func permutationEquation(p: [Int]) -> [Int] {
    let n = p.count
    var result = [Int](repeating: 0, count: n)
    var position = [Int](repeating: 0, count: n + 1)

    for i in 0..<n {
        position[p[i]] = i + 1
    }

    for i in 1...n {
        result[i - 1] = position[position[i]]
    }

    return result
}

let p = [4,3,5,1,2]
let example = permutationEquation(p: p)
print(example)