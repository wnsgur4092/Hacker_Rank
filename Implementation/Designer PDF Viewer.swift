import Foundation

/*
 * Complete the 'designerPdfViewer' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY h
 *  2. STRING word
 */

func designerPdfViewer(h: [Int], word: String) -> Int  {
    // Write your code here
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    var maxHeight = 0

    for char in word {
        if let index = alphabet.firstIndex(of: char){
            let height = h[index]
            if height > maxHeight {
                maxHeight = height
            }
        }
    }

    return maxHeight * word.count
}

// Example usage:
let heights = [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
let word = "zzzz"
let area = designerPdfViewer(h: heights, word: word)
print(area) // Output should be 8