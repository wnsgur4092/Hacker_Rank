import Foundation

/*
 * Complete the 'toys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY w as parameter.
 */

func toys(w: [Int]) -> Int {
    // Write your code here
    var sortedW = w.sorted()
    var container = 0

    while !sortedW.isEmpty {
        let min = sortedW[0]
        let max = min + 4

        if let index = sortedW.firstIndex(where: { $0 > max }) {
            sortedW.removeFirst(index)
        } else {
            sortedW.removeAll()
        }

        container += 1
    }

    return container
}

print(toys(w: [1,2,3,4,5,10,11,12,14]))
