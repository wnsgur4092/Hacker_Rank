import Foundation

/*
 * Complete the 'angryProfessor' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY a
 */

func angryProfessor(k: Int, a: [Int]) -> String {
    // Write your code here
    var attendance = 0 

    for i in 0..<a.count {
        if a[i] <= 0 {
            attendance += 1
        } 
    }
    // print(attendance)
    let output = attendance < k ? "YES" : "NO"
    return output
}

let k = 3
let a = [-1,-3,4,2]

let example = angryProfessor(k: k, a: a)
print(example)