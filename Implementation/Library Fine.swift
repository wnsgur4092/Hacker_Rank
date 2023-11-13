import Foundation

/*
 * Complete the 'libraryFine' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER d1
 *  2. INTEGER m1
 *  3. INTEGER y1
 *  4. INTEGER d2
 *  5. INTEGER m2
 *  6. INTEGER y2
 */

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    // Write your code here
    var fine = 0 

    if y1 > y2 {
        fine = 10000
    } else if y2 == y1 && m1 > m2 {
        fine = 500 * (m1 - m2)
    } else if y2 == y1 && m2 == m1 && d1 > d2 {
        fine = 15 * (d1 - d2)
    } else {
        fine = 0
    }

    return fine
}

let d1 = 9
let m1 = 6
let y1 = 2016
let d2 = 6
let m2 = 6
let y2 = 2015

let example = libraryFine(d1: d1, m1: m1, y1: y1, d2: d2, m2: m2, y2: y2)
print(example)
