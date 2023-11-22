import Foundation

/*
 * Complete the 'cavityMap' function below.
 *
 * The function is expected to return a STRING_ARRAY.
 * The function accepts STRING_ARRAY grid as parameter.
 */

func cavityMap(grid: [String]) -> [String] {
    // Write your code here
    var grid = grid.map{Array($0)}
    var x = 1
    let n = grid.count
    print(n)

    while x < n - 1 {
        var y = 1 
        while y < n - 1 {
            let current = grid[x][y]
            if grid[x-1][y] < current &&
            grid[x+1][y] < current &&
            grid[x][y-1] < current &&
            grid[x][y+1] < current {
                grid[x][y] = "X"
            }
            y += 1
        }
        x += 1
    }

    return grid.map{ String ($0)}
}

let grid = ["1112", "1912", "1892", "1234"]
let example = cavityMap(grid: grid)
print(example)
