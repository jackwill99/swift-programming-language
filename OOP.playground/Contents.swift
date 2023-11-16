import UIKit

// define a class
class Employee {
    // define a property
    var employeeID = 0
}

// create two objects of the Employee class
var employee1 = Employee()
var employee2 = Employee()

// access property using employee1
employee1.employeeID = 1001
print("Employee ID: \(employee1.employeeID)")

// access properties using employee2
employee2.employeeID = 1002
print("Employee ID: \(employee2.employeeID)")

// ------------------------ Computed Property ------------------------
class Calculator {
    // define properties
    var num1: Int = 0
    var num2: Int = 0

    // define computed property
    var sum: Int {
        // calculate value
        num1 + num2
    }
}

var obj = Calculator()
obj.num1 = 11
obj.num2 = 12
print("Sum:", obj.sum)

// with getter & setter
class Calculator1 {
    var num1: Float = 0
    var num2: Float = 0

    // create computed property
    var sum: Float {
        // retrieve value
        get {
            num1 + num2
        }

        // set new value to num1 and num2
        set(modify) {
            num1 = modify / 2
            num2 = modify / 2
        }
    }
}

var obj1 = Calculator1()
obj1.num1 = 20
obj1.num2 = 50

// get value
print("Get value:", obj1.sum)

// provide value to modify
obj1.sum = 5

print("New num1 value:", obj1.num1)
print("New num2 value:", obj1.num2)
print("Get value:", obj1.sum)

// ------------------------ Function Inside Class ------------------------
class Room {
    var length = 0.0
    var breadth = 0.0

    // method to calculate area
    func calculateArea() {
        print("Area of Room =", length * breadth)
    }
}

// create object of Room class
var studyRoom = Room()

// assign values to all the properties
studyRoom.length = 42.5
studyRoom.breadth = 30.8

// access method inside class
studyRoom.calculateArea()

// ------------------------ Static Property and Method ------------------------

class University {
    // static property
    static var name: String = ""
    // non-static property
    var founded: Int = 0

    static func printName() {
        print("University name is \(name)")
    }
}

var obj2 = University()

// assign value to static property
University.name = "Mandalay University"
print(University.name)

// assign value to non-static property
obj2.founded = 1991
print(obj2.founded)

// call static method
University.printName()

// ------------------------ Mutating Methods ------------------------

// In many programming languages, variables can be categorized into two types: mutable and immutable. Mutable variables can be modified after they are created, while immutable variables cannot be changed once they are assigned a value.
// The concept of "mutating" is particularly relevant in object-oriented programming, where objects often have properties or attributes that can be modified. In such cases, methods or functions that change the internal state of an object are often marked as "mutating" to indicate that they modify the object directly.
// For example, the `mutating` keyword is used to indicate that a method is allowed to modify the properties of the struct or enum instance it is called on. It is used when defining methods inside value types (such as structs and enums) to enable modification of their properties.

struct Point {
    var x = 0
    var y = 0

    mutating func moveByX(deltaX: Int, y deltaY: Int) {
        x += deltaX
        y += deltaY
    }
}

var point = Point()
point.moveByX(deltaX: 5, y: 10)
print(point)

// In this example, the `moveByX(deltaX:,y:)` method is marked as `mutating` because it modifies the `x` and `y` properties of the `Point` struct instance. By using the `mutating` keyword, the method can change the internal state of the struct, allowing the `point` variable to be updated.
// Overall, the concept of "mutating" refers to the ability to modify variables, objects, or data structures, and it is a fundamental aspect of programming that enables dynamic behavior and state changes in programs.

// ------------------------ Initializer ------------------------
/// `self` must need in `Initializer` but it's optional in other statements. If it's optional , it may cause conflicting when local variable and property name are the same. In this case, you should use `self` keywork.
class Bike {
    var name: String

    init(name: String) {
        self.name = name
    }
}

var bike1 = Bike(name: "BMX Bike")
bike1.name

// Failable Initializer
class File {
    var folder: String

    // failable initializer
    init?(folder: String) {
        // check if empty
        if folder.isEmpty {
            print("Folder Not Found")
            return nil
        }
        self.folder = folder
    }
}

var file = File(folder: "")
if file != nil {
    print("File Found Successfully")
}
else {
    print("Error Finding File")
}

class VehicleTest {
    var speed: Double
    var description: String {
        "Current speed is \(speed)"
    }

    init(speed: Double = 0.0) {
        self.speed = speed
    }
}

var vehicle1 = VehicleTest()
print(vehicle1.description)
var vehicle2 = VehicleTest(speed: 200)
print(vehicle2.description)

// ------------------------ Memberwise Initializer for structs ------------------------
struct Person {
    var name: String
    var age: Int
}

var person1 = Person(name: "Dwight", age: 43)
print("Name:", person1.name)
print("Age:", person1.age)

// ------------------------ Struct Vs Class ------------------------
// 1. Class is the concept of object-oriented programming. So, it provides some OOP features like Inheritance where we can derive a new class from the existing class.
// However, inheritance of structs is not available.

// 2. `Class` is reference type and `Struct` is value type. This means each instance of a class shares the same copy of data. For example,
var bike2 = bike1
bike2.name = "Mountain Bike"
bike1.name

// struct
var point2 = point
point.x
point2.x = 10
point2.x
point.x

// 3. In constant instance of struct, you cannot assign to property even property is mutating but class can.

let employee = Employee()
employee.employeeID = 1003

// Cannot assign to property: 'person34' is a 'let' constant
// let person34 = Person(name: "Jack", age: 22)
// person34.name = "Lewis"

// Cannot use mutating member on immutable value: 'point34' is a 'let' constant
// let point34 = Point(x: 5,y: 10)
// point34.moveByX(deltaX: 10, y: 5)

// ------------------------ Deinitialization ------------------------
// Deinitialization is a process to deallocate class instances when they're no longer needed. This frees up the memory space occupied by the system.
class Race {
    var laps: Int

    // define initializer
    init() {
        self.laps = 5
        print("Race Completed")
        print("Total laps:", laps)
    }

    // define deinitializer
    deinit {
        print("Memory Deallocated")
    }
}

var result: Race? = Race()
// deallocate object
result = nil

// Note
// In Swift, we only use deinitializers when we manually want to deallocate instances. Otherwise, Swift automatically does the deallocation.
// Deinitializers can only be used with classes and not with structs.
// Each class can only have a single deinitializer.

// ------------------------ Compute Property Observers ------------------------

/// If you set the value of the other property even though it already has the right value, you will end up with an infinite loop of each property setting the other.
/// `if` condition of didSet is break point, otherwise whenever `heightInInches` and `heightInCentimeters` changes, they will call infinity each other.
struct Height {
    var heightInInches: Double {
        willSet {
            print("heightInInches willSet \(heightInInches) ---- \(newValue)")
        }

        didSet {
            print("heightInInches didSet \(heightInInches) ---- \(oldValue)")

            if heightInInches != oldValue { // this is break point
                heightInCentimeters = heightInInches * 2.54
            }
        }
    }

    var heightInCentimeters: Double {
        willSet {
            print("heightInCentimeters willSet \(heightInCentimeters) ---- \(newValue)")
        }

        didSet {
            print("heightInCentimeters didSet \(heightInCentimeters) ---- \(oldValue)")
            if heightInCentimeters != oldValue { // this is break point
                heightInInches = heightInCentimeters / 2.54
            }
        }
    }

    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }

    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

var height = Height(heightInInches: 10)
height.heightInInches = 20

// ------------------------ Inheritance ------------------------

class Animal {
    var name: String = ""
    func eat() {
        print("I can eat")
    }
}

// inherit from Animal
class Dog: Animal {
    // new method in subclass
    func display() {
        // access name property of superclass
        print("My name is ", name)
    }
}

var labrador = Dog()

labrador.name = "Rohu"
labrador.eat()
labrador.display()

// Inheritance with initialization
class Dog3 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle: Dog3 {
    var weight: Double

    init(name: String, weight: Double, breed: String = "Poodle") {
        self.weight = weight
        super.init(name: name, breed: breed)
    }
}

// ------------------------  Overriding ------------------------
class Dog1: Animal {
    // overriding the eat() method
    override func eat() {
        print("I eat dog food")
    }
}

var labrador1 = Dog1()
labrador1.eat()

// Prevent method overriding
class Vehicle {
    // prevent overriding
    final func displayInfo() {
        print("Four Wheeler or Two Wheeler")
    }
}

// Car inherits Vehicle
class Car: Vehicle {
    // attempt to override
//    override func displayInfo() {
//        print("Four Wheeler")
//    }
}

var car1 = Car()
car1.displayInfo()

// # In Swift, we can override the computed properties.

// ------------------------  Protocol ------------------------
protocol Greet {
    var words: String { get }
    func message()
}

// conform class to  protocol
class Employee1: Greet {
    var words = "Perry"

    // implementation of method
    func message() {
        print("Good Morning", words)
    }
}

var employee_1 = Employee1()
employee_1.message()

// Conforming Multiple Protocols
protocol Sum {
    func addition()
}

protocol Multiplication {
    func product()
}

// conform class to two protocols
class Calculate: Sum, Multiplication {
    var num1 = 0
    var num2 = 0

    func addition() {
        let result1 = num1 + num2
        print("Sum:", result1)
    }

    func product() {
        let result2 = num1 * num2
        print("Product:", result2)
    }
}

var calc1 = Calculate()
calc1.num1 = 5
calc1.num2 = 10
calc1.addition()
calc1.product()

// Protocol Inheritance
protocol Phone {
    var colorOptions: Int { get }
}

protocol Brand: Phone {
    var name: String { get }
}

class IPhone: Brand {
    var colorOptions: Int = 0
    var name: String = ""
}

let iPhone = IPhone()
iPhone.colorOptions = 4
iPhone.name = "15 Plus"

print(iPhone.colorOptions)
print(iPhone.name)

// Protocol Extension

// TODO: need to write
