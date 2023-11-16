import UIKit

// Function
func firstFunc(name: String) {
    print("Hay yo! What's bro!!!!!! \(name)")
}

firstFunc(name: "Jack Will")

// Function argument label, `to` is called the argument label(call site) that can be whatever u want and this makes developer to readable
func add(_ value1: Int, to value2: Int) {
    let result = value1 + value2
    print("Result is \(result)")
}

add(10, to: 5)

// Function with return type,
func addValue(firstValue: Int, to secondValue: Int) -> Int {
    return firstValue + secondValue
}

addValue(firstValue: 20, to: 15)

// more example
func present(what things: String, to receivePerson: String) -> String {
    return "I give \(things) for \(receivePerson). Do u like that ???"
}

present(what: "flowers", to: "Rose")

// Omit arguments label
// In function, you can do positional arguments
func firstFunc1(_ name: String) {
    print("Hay yo! What's bro!!!!!! \(name)")
}

firstFunc1("hay")

// you can also use
func present2(things: String, receivePerson: String) -> String {
    return "I give \(things) for \(receivePerson). Do u like that ???"
}

present2(things: "flowers", receivePerson: "Rose")

// Function with return multiple values
func compute(number: Int) -> (Int, Int, Int, String) {
    var square = number * number
    var cube = square * number
    return (number, square, cube, "compute func")
}

var result = compute(number: 5)

print("Number:", result.0)
print("Square:", result.1)
print("Cube:", result.2)
print("Function name:", result.3)

// Nested Function with Return function
func nestedVoid() -> () -> () {
    func void() {
        print("nested void function")
    }
    return void
}

nestedVoid()

// Nested Function with Return function including datatype
func nestedFunc() -> () -> Int {
    func test() -> Int {
        return 0
    }
    return test
}

nestedFunc()

func operate(symbol: String) -> (Int, Int) -> Int {
    // inner function to add two numbers
    func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }

    print("symbol operation \(symbol)")
    return add
}

let operation = operate(symbol: "+")
let operation2 = operation(8, 3)
print("Result:", operation2)

// default parameter
func defaultFunc(name: String = "jackwill") {
    print(name)
}

defaultFunc()
defaultFunc(name: "lewis")

// Function with variadic parameters
func variadicFunc(numbers: Int...) {
    var result = 0
    for i in numbers {
        result += i
    }
    print("counter is \(numbers.count)")
    print("result is \(result)")
}

variadicFunc(numbers: 1, 2, 3)
variadicFunc(numbers: 1, 2, 3, 4, 5, 6)
variadicFunc(numbers: 1)

// Function pass by reference
func passByRef(to name: inout String) {
    if name == "Rose" {
        name = "Jack"
    }
    else {
        name = "Rose"
    }
}

var ref = "Rose"
print("Before calling passByRef func \(ref)")
passByRef(to: &ref)
print("After calling passByRef func \(ref)")
passByRef(to: &ref)
print("After calling passByRef func 2nd times \(ref)")

// ------------------------------------------------------------------------

// Swift Library Function
// sqrt computes the square root
var squareRoot = sqrt(27)

print("Square Root of 27 is", squareRoot)

// pow() comptes the power
var power = pow(2, 3)

print("2 to the power 3 is", power)

// ------------------------------------------------------------------------

/// Closure function
///
/// A closure is a special type of function without the function name.
///
///     // normal closure function
///     {
///         // statements
///     }
///
///     // with parameters
///     { (parameters) in
///         // statements
///     }
///
///     // with parameters and return type
///     { (parameters) -> returnType in
///         // statements
///         return returnType
///     }
///
/// `in` is a keyword defined in the Swift `closure syntax` as `a separator` between the `function return type and the function body` in a only closure
let closure = { (name: String) in
    print("this is \(name) function")
}

closure("closure")

let closureType = { (name: String) -> String in
    print("this is \(name) function")
    return name
}

closureType("closure")

// ------------------------------------------------------------------------

// Pass Closures as Function Parameter
func grabLunch(search: () -> ()) {
    print("before calling closure")
    // call closure function
    search()
}

grabLunch(search: {
    print("search func")
})
grabLunch {
    print("search func2")
}

// Trailing Closure
// If a function accepts a closure as its last parameter, can call the function by passing closure as a function body without mentioning the name of the parameter
func grabLunch1(name: String, search: () -> ()) {
    print("before calling closure")
    // call closure function
    search()
}

grabLunch1(name: "searching") {
    print("searching with closure")
}

// ------------------------------------------------------------------------

// Function Overloading
func openCamera(iosVersion: Int) -> Int {
    print("You are opening the camera with iOS \(iosVersion) version")
    return iosVersion
}

func openCamera() {
    print("You can use google lens for searching, Android")
}

openCamera()
openCamera(iosVersion: 15)

// ------------------------------------------------------------------------

// Recursion function
// Ref: https://www.programiz.com/sites/tutorial2program/files/swift-recursion.png

// program to count down number to 0
func countDown(number: Int) {
    // display the number
    print(number)

    // condition to break recursion
    if number == 0 {
        print("Countdown Stops")
    }

    // condition for recursion call
    else {
        // decrease the number value
        countDown(number: number - 1)
    }
}

print("Countdown:")
countDown(number: 3)

// Recursion function with factorial
// Ref: https://www.programiz.com/sites/tutorial2program/files/swift-factorial-working.png
func factorial(num: Int) -> Int {
    // condition to break recursion
    if num == 0 {
        return 1
    }

    // condition for recursive call
    else {
        return num * factorial(num: num - 1)
    }
}

// function call
print("The factorial of 5 is", factorial(num: 5))

// # For Recursion advantages and disadvantages
// 1. Advantages
// It makes our code shorter and cleaner.
// Recursion is required in problems concerning data structures and advanced algorithms, such as Graph and Tree Traversal.

// 2. Disadvantages
// It takes a lot of stack space compared to an iterative program.
// It uses more processor time.
// It can be more difficult to debug compared to an equivalent iterative program.

// ------------------------------------------------------------------------

// Asynchronous Function

func asyncFunc() async {
    print("Async Function")
}

func asyncFunc1() async -> String {
    await asyncFunc()
    return "Async Func"
}

await asyncFunc1()
