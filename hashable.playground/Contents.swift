import UIKit

// A Hashable is a protocol that provides a hashValue to our object. The hashValue is used to compare two instances.

// conform Employee to Hashable
struct Employee: Hashable {
    var name: String
    var salary: Int
}

// initialize two objects with different property values
let obj1 = Employee(name: "Sabby", salary: 40000)
let obj2 = Employee(name: "Cathy", salary: 30000)

print("Different hash value: ")
print(obj1.hashValue)
print(obj2.hashValue)

// initialize two objects with same property values
let obj3 = Employee(name: "Lanny", salary: 50000)
let obj4 = Employee(name: "Lanny", salary: 50000)

print("\nSame hash value: ")
print(obj3.hashValue)
print(obj4.hashValue)

// ------------------------ Class with Hashable ------------------------

class Employee2: Hashable {
    var name: String
    var salary: Int
    init(name: String, salary: Int) {
        self.name = name
        self.salary = salary
    }

    func hash(into hasher: inout Hasher) {
//        hasher.combine(salary)
        hasher.combine(name)
    }

    static func == (lhs: Employee2, rhs: Employee2) -> Bool {
        return lhs.name == rhs.name && lhs.salary == rhs.salary
    }
}

// initialize two objects with different property values
let obj5 = Employee2(name: "Sabby", salary: 40000)
let obj6 = Employee2(name: "Cathy", salary: 30000)

print("\nDifferent hash value: ")
print(obj5.hashValue)
print(obj6.hashValue)

// initialize two objects with same property values
let obj7 = Employee2(name: "Lanny", salary: 50000)
let obj8 = Employee2(name: "Lanny", salary: 50000)

print("\nSame hash value: ")
print(obj7.hashValue)
print(obj8.hashValue)

// initialize two objects with different property values
let obj9 = Employee2(name: "Sabby", salary: 40000)
let obj10 = Employee2(name: "Sabby", salary: 30000)

print("\nDifferent hash value: ")
print(obj9.hashValue)
print(obj10.hashValue)
