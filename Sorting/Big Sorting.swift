import Foundation

/*
 * Complete the 'bigSorting' function below.
 *
 * The function is expected to return a STRING_ARRAY.
 * The function accepts STRING_ARRAY unsorted as parameter.
 */

func bigSorting(unsorted: [String]) -> [String] {
    // Write your code here
    return unsorted.sorted {
        if $0.count == $1.count {
            return $0 < $1
        }
        return $0.count < $1.count
    }
}


print(bigSorting(unsorted: ["3","12303479849857341718340192371","1"]))