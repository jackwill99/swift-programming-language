import UIKit

// ------------------------ Swift Enumeration ------------------------
enum Season {
    case spring, summer, autumn, winter
}

var currentSeason: Season
currentSeason = Season.summer

print("Current Season:", currentSeason)

// With Switch Statement
enum PizzaSize {
    case small, medium, large
}

var size = PizzaSize.medium

switch size {
case .small:
    print("I ordered a small size pizza.")

case .medium:
    print("I ordered a medium size pizza.")

case .large:
    print("I ordered a large size pizza.")
}

// ------------------------ Iterate Over enum ------------------------
enum Season1: CaseIterable {
    case spring, summer, autumn, winter
}

for currentSeason in Season1.allCases {
    print(currentSeason)
}

// ------------------------ Enums with rawValue ------------------------
enum Size1: Int {
    case small = 10
    case medium = 12
    case large = 14
}

var result = Size1.small.rawValue
print(result)

// ------------------------ Enum with Associated Values ------------------------
enum Marks {
    // associate value
    case grade(String)
    case gpa(Float)
}

var grade = Marks.grade("A")
print(grade)

var gpa = Marks.gpa(4.5)
print(gpa)

// Notes
// 1. An enum cannot have both raw values and associated values at the same time.
// 2. The raw values of an enum must be of the same data type. But associated values can be of any type.

// ------------------------ Enums with rawValue ------------------------

// ------------------------ Enums with rawValue ------------------------

enum OnOffSwitch {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()
