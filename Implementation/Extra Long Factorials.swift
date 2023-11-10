import Foundation

/*
 * Complete the 'extraLongFactorials' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func extraLongFactorials(n: Int) -> Void {
    // Write your code here
    var output = 1

    for i in 1..<n {
        output *= i
    }

    print(output)
}
