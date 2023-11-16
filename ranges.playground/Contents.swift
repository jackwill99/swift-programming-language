import UIKit

// Range
// Ref: https://www.programiz.com/swift-programming/ranges
var numbers = 1...4

// 1...4 contains value 1,2,3,4
// 1 is lower bound(first element)
// 4 is upper bound (last element)

/// There are three types of Range
/// 1. Closed range
///  - A closed range includes all the values in the interval from the lower bound to the upper bound.
/// 2. Half-Open range
///  - A half-open range includes all the values from the lower bound to the upper bound. However, it excludes the upper bound (last number).
/// 3. One-Sided range
///  - Create a one-sided range using either of the `...` or the `..<` operator. A one-sided range contains elements up to infinite in one direction

// 1...4 is close range
for numbers in 1...4 {
    print(numbers)
}

// 1..<4 is half-open range
for numbers in 1 ..< 4 {
    print(numbers)
}

// one-sided range using
// ..< operator
let range1 = ..<2

// check if -9 is in the range
print(range1.contains(-1))

// one-sided range using
// ... operator
let range2 = 2...

// check if 33 is in the range
print(range2.contains(33))

// ------------------------------------------------------------------------

// Access Array Elements Using Swift Range
let languages = ["Swift", "Java", "C", "Dart", "Python", "Node"]

// access array elements
print(languages[0...2])


// ------------------------------------- Number Format -----------------------------------

let shoePrice = 15_000
print("Nike Revolution 5 price is /$\(shoePrice)")
