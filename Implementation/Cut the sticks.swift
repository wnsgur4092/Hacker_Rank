import Foundation

/*
 * Complete the 'cutTheSticks' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func cutTheSticks(arr: [Int]) -> [Int] {
    // Write your code here
    var sticks = arr.sorted()
    var result = [Int]()
    // print(sticks)

    while !sticks.isEmpty {
        result.append(sticks.count)
        print(result)

        let cutLength = sticks[0]

        sticks = sticks.map{ $0 - cutLength }
        sticks = sticks.filter{ $0 > 0 }
    }


    return result
}

let arr = [1,2,3,4,3,3,2,1]
let example = cutTheSticks(arr: arr)
print(example)