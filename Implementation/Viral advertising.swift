func viralAdvertising(n: Int) -> Int {
    var shared = 5
    var cumulativeLikes = 0

    for _ in 1...n {
        let likes = shared / 2
        cumulativeLikes += likes
        shared = likes * 3
    }

    return cumulativeLikes
}

// Example usage:
let days = 3
let totalLikes = viralAdvertising(days: days)
print(totalLikes) // Output should be the cumulative number of likes