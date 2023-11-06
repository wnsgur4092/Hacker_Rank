import Foundation

/*
 * Complete the 'countingValleys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER steps
 *  2. STRING path
 */

func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    var valleys = 0
    var currentLevel = 0

    for step in path{
        if step == "U" {
            currentLevel += 1
        } else if step == "D" {
            currentLevel -= 1
        }

        if currentLevel == 0 && step == "U"{
            valleys += 1
        }
    }

    return valleys
}


let steps = 8
let path = "UDDDUDUU"
let output = countingValleys(steps: steps, path: path)
print(output)