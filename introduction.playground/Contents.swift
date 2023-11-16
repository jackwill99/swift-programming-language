import UIKit

// Shift + Enter to run playground in shortcut

// data type
var str: String = "Jack Will"
var integer: Int = 20
var boolean: Bool = true

// ------------------------------------------------------------------------

// Type Conversion
print(String(integer))
print(Int("20"))
print(Float("20"))

// ------------------------------------------------------------------------

// Single Line String
var userName: String = "Jack Will"
userName = "Lewis"
print(userName)

// ------------------------------------------------------------------------

// Multiline String Literals
var multilineStr: String = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

// ------------------------ Input / Output ------------------------

// Output
print("This is the output")

// Output with terminator
print("This is the output with terminator", terminator: "---\n")

// Output with separator
print("14", "2022", "2022", separator: "-")

// Input
print("Enter your favorite programming language:")
// let name = readLine()

// ------------------------------------------------------------------------

// empty string
var emptyString: String = ""

// constant value
let constStr: String = "Constant Value"
// constStr = "Change" // This will go error

print(type(of: constStr))

// ------------------------------------------------------------------------

if emptyString.isEmpty {
    print("yeah empty")
}

for char in userName {
    print(char)
}

// Nested Ternary Conditional Operator
let number = 7

let check = (number == 0) ? "Zero" : ((number > 0 && number > 100) ? "Over one handard" : ((number > 0) ? "Positive" : "negative"))
print(check)

// ------------------------ SwiftUI Automatic Grammar Agreement ------------------------

// It works only SwiftUI
print("^[\(1) Person](inflect: true)")
print("^[\(10) Person](inflect: true)")
