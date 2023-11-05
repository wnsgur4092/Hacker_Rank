import Foundation

/*
 * Complete the 'bonAppetit' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY bill
 *  2. INTEGER k
 *  3. INTEGER b
 */

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    // Write your code here
    let total = bill.reduce(0,+)

    let anna = (total - bill[k]) / 2 // 7
    // print("Anna:\(anna)")

    if anna == b{
        print("Bon Appetit")
    } else {
        print(b-anna)
    }
}

// Example usage:
bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 12) // Output should be 5
bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7)  // Output should be "Bon Appetit"

