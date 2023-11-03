import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a / gcd(a, b) * b
}

func getTotalX(a: [Int], b: [Int]) -> Int {
    let lcmA = a.reduce(1, lcm)
    let gcdB = b.reduce(b[0], gcd)
    var count = 0
    var multiple = lcmA

    while multiple <= gcdB {
        if gcdB % multiple == 0 {
            count += 1
        }
        multiple += lcmA
    }

    return count
}

// Example usage:
let a = [2, 4]
let b = [16, 32, 96]
let result = getTotalX(a: a, b: b)
print(result)  // Output: 3
