import UIKit

// O(n²)
func reverseString(_ input: String) -> String {
    var reversed = ""
    for character in input {
        reversed = "\(character)" + reversed
    }
    return reversed
}

// O(n)
func reverseStringByArray(_ input: String) -> String {
    var characters = Array(input)
    let length = characters.count
    for index in 0 ..< length / 2 {
        let temp = characters[index]
        characters[index] = characters[length - index - 1]
        characters[length - index - 1] = temp
    }
    return String(characters)
}

let sentence = "All that we see or seem is but a dream within a dream."
var reversedString = reverseString(sentence)
print(reversedString)
reversedString = reverseString(reversedString)
print(reversedString)
