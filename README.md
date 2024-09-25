# ReverseString

`ReverseString` is a Swift project that demonstrates different approaches to reversing a string. The project includes two methods: one with a time complexity of O(n²) and another more efficient method with a time complexity of O(n). These methods serve as examples of string manipulation techniques in Swift.

## Features

- **Reverse String with O(n²) Complexity**: A simple approach that reverses a string by iterating over each character and prepending it to the result.
- **Reverse String with O(n) Complexity**: A more efficient approach that swaps characters in an array representation of the string.

### Adding to Your Project

To include the reverse string functions in your project, copy the functions `reverseString(_:)` and `reverseStringByArray(_:)` into your codebase.

## Usage

### 1. Reversing a String Using O(n²) Complexity

This function iterates through each character in the input string and builds the reversed string by prepending each character. This approach has a time complexity of O(n²) due to repeated string concatenation.

```swift
// O(n²) - Inefficient approach for large strings
func reverseString(_ input: String) -> String {
    var reversed = ""
    for character in input {
        reversed = "\(character)" + reversed
    }
    return reversed
}

// Example usage
let sentence = "All that we see or seem is but a dream within a dream."
let reversedString = reverseString(sentence)
print(reversedString) // ".maerd a nihtiw maerd a tub si mees ro ees ew taht llA"
```

### 2. Reversing a String Using O(n²) Complexity

This function iterates through each character in the input string and builds the reversed string by prepending each character. This approach has a time complexity of O(n²) due to repeated string concatenation.

```swift
// O(n) - Efficient approach using array manipulation
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

// Example usage
let reversedString = reverseStringByArray(sentence)
print(reversedString) // ".maerd a nihtiw maerd a tub si mees ro ees ew taht llA"
```
