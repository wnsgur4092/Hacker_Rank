import Foundation

/*
 * Complete the 'gridChallenge' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING_ARRAY grid as parameter.
 */

func gridChallenge(grid: [String]) -> String {
    // Write your code here
    let sortedGrid = grid.map{String($0).sorted()}
    // print(sortedGrid)
    let n = sortedGrid[0].count
    print(n)

    for col in 0..<n{
        var column = ""
        for row in sortedGrid{
            column.append(row[col])
        }
        // print(column)

        if column != String(column.sorted()){
            return "NO"
        }
    }
    return "YES"
}

print(gridChallenge(grid: ["ebacd", "fghij", "olmkn", "trpqs", "xywuv"])) // "YES"