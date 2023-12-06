import Foundation

/*
 * Complete the 'missingNumbers' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY arr
 *  2. INTEGER_ARRAY brr
 */

func missingNumbers(arr: [Int], brr: [Int]) -> [Int] {
    // Write your code here
    var dictA = [Int: Int]()
    var dictB = [Int:Int]()
    var output = Set<Int>()

    for number in arr {
        dictA[number, default: 0] += 1
    }

    print(dictA)
    
    for number in brr{
        dictB[number,default: 0] += 1
    }

    print(dictB)

    for (number, count) in dictB {
        if dictA[number] ?? 0 < count{
            output.insert(number)
        }
    }

    return output.sorted()
}

let arr = [7, 2, 5, 3, 5, 3]
let brr = [7, 2, 5, 4, 6, 3, 5, 3]
print(missingNumbers(arr: arr, brr: brr)) // [4, 6]