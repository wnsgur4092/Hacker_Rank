func flippingMatrix(matrix: [[Int]]) -> Int {
    let n = matrix.count / 2
    var maxSum = 0

    for i in 0..<n {
        for j in 0..<n {
            let maxElement = max(
                matrix[i][j], 
                matrix[i][2 * n - j - 1], 
                matrix[2 * n - i - 1][j], 
                matrix[2 * n - i - 1][2 * n - j - 1]
            )
            maxSum += maxElement
        }
    }

    return maxSum
}
