import Foundation

/*
 * Complete the 'maximumToys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY prices
 *  2. INTEGER k
 */

func maximumToys(prices: [Int], k: Int) -> Int {
    let sortedPrices = prices.sorted()
    var total = 0
    var count = 0

    for price in sortedPrices {
        if total + price <= k {
            total += price
            count += 1
        } else {
            break
        }
    }

    return count
}


print(maximumToys(prices: [3 ,7 ,2 ,9,4], k: 15))