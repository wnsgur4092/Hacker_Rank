import Foundation

/*
 * Complete the getMoneySpent function below.
 */
func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    /*
     * Write your code here.
     */
    var max = -1 

    for keyboard in keyboards{
        for drive in drives{
            let total = keyboard + drive

            if total <= b && total > max {
                max = total
            }
        }
    }

    return max
}

// Example usage:
let keyboards = [3, 1]
let drives = [5, 2, 8]
let budget = 10
let moneySpent = getMoneySpent(keyboards: keyboards, drives: drives, b: budget)
print(moneySpent) // Should print the maximum that can be spent without going over the budget