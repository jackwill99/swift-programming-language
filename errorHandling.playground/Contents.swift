import UIKit

enum DivisionError: Error {
    case dividedByZero
    case negativeValue(value: String)
}

func division(numerator: Int, denominator: Int) throws -> Int {
//    if denominator == 0 {
//        throw DivisionError.dividedByZero
//    }
    guard denominator != 0 else {
        throw DivisionError.dividedByZero
    }

    return numerator / denominator
}

// call throwing function from do block
do {
    let result = try division(numerator: 4, denominator: 0)
    print("Result is : \(result)")
}

// catch error if function throws an error
catch DivisionError.dividedByZero {
    print("Error: Denominator cannot be 0")
}

//
//
func checkDivision(numerator: Int, denominator: Int) throws {
    guard denominator != 0 else {
        throw DivisionError.dividedByZero
    }
}

func divisionMultiple(numerator: Int, denominator: Int) throws {
    try checkDivision(numerator: numerator, denominator: denominator)
    print("Division and Multiple result is : \((numerator / denominator) * 10)")
}

try divisionMultiple(numerator: 10, denominator: 2)

do {
    try divisionMultiple(numerator: 4, denominator: 0)
} catch DivisionError.dividedByZero {
    print("Error: Denominator cannot be 0")
}
