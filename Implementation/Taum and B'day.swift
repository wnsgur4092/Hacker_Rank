import Foundation

/*
 * Complete the 'taumBday' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER b
 *  2. INTEGER w
 *  3. INTEGER bc
 *  4. INTEGER wc
 *  5. INTEGER z
 */

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    let costWithoutConversion = b * bc + w * wc
    let costConvertWhiteToBlack = b * (wc + z) + w * wc
    let costConvertBlackToWhite = w * (bc + z) + b * bc

    return min(costWithoutConversion, costConvertWhiteToBlack, costConvertBlackToWhite)
}