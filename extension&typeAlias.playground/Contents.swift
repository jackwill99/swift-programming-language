import UIKit

// we can add new functionality to existing types. We can achieve this using an extension.

class Temperature {
    var celsius: Double = 0

    func setTemperature(celsius: Double) {
        self.celsius = celsius
        print("Celsius:", celsius)
    }
}

// declare an extension
extension Temperature {
    // add a new method to Temperature class
    func convert() {
        var fahrenheit = (celsius * 1.8) + 32
        print("Fahrenheit:", fahrenheit)
    }
}

// class initialization
let temp1 = Temperature()
temp1.setTemperature(celsius: 16)

// access extension method using class object
temp1.convert()

// ------------------------ Computed property in extension ------------------------

class Circle {
    var radius: Double = 0
}

extension Circle {
    // define computed property
    var area: Double {
        return 3.14 * radius * radius
    }
}

let circle1 = Circle()
circle1.radius = 5
print("Area:", circle1.area)

// ------------------------ Type Alias ------------------------

typealias StudentName = String
let name: StudentName = "Jack Will"
print(name)

class Student {
    let name: String
    init(to name: String) {
        self.name = name
    }
}

typealias Students = [Student]
var students: Students = []
students.append(Student(to: "Lewis"))
print(students[0].name)

// with closure
func someMethod(oncomp: (Int) -> String) {
    print(oncomp(1))
}

someMethod { (i: Int) -> String in
    String(i + 10)
}

typealias CompletionHandler = (Int) -> String
func someMethod2(oncomp: CompletionHandler) {
    print(oncomp(1))
}

someMethod2 { (i: Int) -> String in
    String(i + 20)
}
