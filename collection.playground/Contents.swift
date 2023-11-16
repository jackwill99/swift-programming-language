import UIKit

// Array
// if there is empty array, like that
var arr: [Int] = []
// another way
var value: [Int] = []
var value2 = [Int]()
// var value: [Int] = [1, 2]
print(value)

// Create array instance
var arrInstance = [Int](repeating: 0, count: 10) // Create 10 count of array elements with the default value of 0
print(arrInstance)
var arrInstance1 = Array(repeating: "", count: 5) // Create 5 count of array elements with the default value of empty string
print(arrInstance1)

arr.append(0)
arr.insert(10, at: 0)
arr.count
arr.last
arr.capacity
arr.hashValue
arr.contains(0)
arr.isEmpty

if arr.isEmpty {
    print("yah array is empty")
} else {
    print("no array has value")
}

value.last
let last1 = value.last
if let last2 = value.last {
    print(value)
    print("There is last value and remove it")
    value.removeAll(where: { $0 == last2 })
    print(value)
}

var numbers = [3, 7, 4, -2, 9, -6, 10, 1]
if let lastNegative = numbers.last(where: { $0 < 0 }) {
    print("The last negative number is \(lastNegative).")
}

// join two arrays
value.append(contentsOf: numbers)
print(value)

// add element at the specified position of array
value.insert(contentsOf: [99, 999], at: 0)
print(value)

// modify the array
value[0] = 98
print(value)

// other methods of array
// remove()     remove the element of an array
// sort()       sorts array elements
// shuffle()    changes the order of array elements
// forEach()    calls a function for each element
// contains()   searches for the element in an array
// swapAt()     exchanges the position of array elements
// reverse()    reverses the order of array elements

// ------------------------------------------------------------------------

//  Set
// Set => unordered , no duplicates, and also good performance in searching,removing and sorting because it's unique
var set: Set<Int> = []
// another way
var emptySet = Set<Int>()
set.insert(10)
set.insert(5)
print(set)

// Set operations
// Swift provides different built-in methods to perform mathematical set operations like union, intersection, subtraction, and symmetric difference.

// Union    ref: https://www.programiz.com/sites/tutorial2program/files/set-union-swift.png
let setA_U: Set = [1, 3, 5]
let setB_U: Set = [0, 2, 4]
print("Union: ", setA_U.union(setB_U))

// Intersection     ref: https://www.programiz.com/sites/tutorial2program/files/set-intersection-swift.png
let setA_I: Set = [1, 3, 5]
let setB_I: Set = [1, 2, 3]
print("Intersection: ", setA_I.intersection(setB_I))

// Difference   ref:https://www.programiz.com/sites/tutorial2program/files/swift-set-difference.png
let setA_D: Set = [2, 3, 5]
let setB_D: Set = [1, 2, 6]
print("Subtraction: ", setA_D.subtracting(setB_D))

// Symmetric Difference     ref:https://www.programiz.com/sites/tutorial2program/files/set-symmetric-difference-swift.png
let setA_S: Set = [2, 3, 5]
let setB_S: Set = [1, 2, 6]
print("Symmetric Difference: ", setA_S.symmetricDifference(setB_S))

// Subset (Checking the Subset of another Set)      ref: https://www.programiz.com/sites/tutorial2program/files/swift-set-subset.png
let setA: Set = [1, 2, 3, 5, 4]
let setB: Set = [1, 2]
print("Subset: ", setB.isSubset(of: setA))

// ------------------------------------------------------------------------

// Dictionary
// Empty dictionary is like that
var dict: [String: String] = [:]
// another way
var empthDict: [String: Int] = [:]
var empthDict1 = [String: Int]()
var emptyDict2 = [String: Int]()

dict["name"] = "Jack Will"
dict.updateValue("Lewis", forKey: "name")
dict["name"]
dict.removeValue(forKey: "name")
dict["name"]

let developer: [String: String] = [
    "position": "Full-Stack Developer",
    "devices": "Macbook M1 pro",
    "company": "Sabahna IT Solutions"
]
developer["company"]

let me: [String: Any] = [
    "name": "Jack Will",
    "position": [
        "Senior Front-end Developer",
        "AI Development Analysis",
        "Internet Of Things Learning"
    ],
    "programming": [
        "IOT": [
            "C++",
            "C"
        ],
        "FrontEnd": [
            "Js",
            "React",
            "Flutter"
        ],
        "AI": [
            "Python",
            "Tensoflow"
        ]
    ]
]

// accessing the dictionary element
if let me_program = me["programming"] as? [String: Any] {
    me_program["FrontEnd"]
}

// add element to a dictionary
if var me_program1 = me["programming"] as? [String: Any] {
    me_program1["BackEnd"] = ["Node", "Django"]
    var iot = me_program1["IOT"] as! [String]
    iot.append("Arduino")
    me_program1["IOT"] = iot
    print(me_program1)
}

// keys and values of dictionary
Array(me.keys)
Array(me.values)

// ------------------------------------------------------------------------

// Tuple
// Tuple is a group of different values. And, each value inside a tuple can be of different data types.

var product = ("MacBook", 1099.99)

// access tuple elements
print("Name:", product.0)
print("Price:", product.1)

// modify second value
product.1 = 1299.99

// We can't add or remove tuple
// product.2 = "Apple"

print("\nTuple After Modification: ")
print("Name:", product.0)
print("Price:", product.1)

// Named tuple
var company = (product: "Programiz App", version: 2.1)
print("Product:", company.product)
print("Version:", company.version)

// Nested Tuple
var alphabets = ("A", "B", "C", ("a", "b", "c"))
print(alphabets.0)
print(alphabets.3)
print(alphabets.3.0)
