import UIKit

// Conditional if then

let myHighScore = 50
let yourHighScore = 40

if myHighScore > yourHighScore {
    print("I win")
} else if yourHighScore > myHighScore {
    print("U win")
} else {
    print("Draw")
}

// switch .. case

func determinePlayerLeague(from rank: Int) {
    switch rank {
    case 0:
        print("Play the game to determine ur league")
    case 0..<50:
        print("Ur in BRONZE League")
    case 50..<100:
        print("Ur in SLIVER League")
    case 100..<200:
        print("Ur in GOLD League")
    default:
        print("Ur in league of ur own. Ur too good.")
    }
}

determinePlayerLeague(from: 250)

// ------------------------------------------------------------------------

// for in with sequence

for i in "Hello!" {
    print(i)
}

// for in loop

let allStars = ["James", "Davis", "Hardan", "Leonard"]
for player in allStars {
    print(player)
}

// for in loop with where clause
for player in allStars where player == "Hardan" {
    print("I'm Hardan")
}

// for in loop with range
for i in 0...5 {
    print(i)
}

for i in 0..<5 {
    print(i)
}

var randomInts: [Int] = []

for _ in 0...5 {
    let randomValue = Int.random(in: 0...1000)
    randomInts.append(randomValue)
}

print(randomInts)

// to get index used enumerated
for (index, player) in allStars.enumerated() {
    print("\(index) is \(player)")
}

// another get index
for index in 0..<allStars.count {
    print("\(index) is \(allStars[index])")
}

// for in whti dictionary
let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for (key, value) in vehicles {
    print("\(key) has \(value) wheels")
}

// for Loop with Stride Function
for i in stride(from: 1, to: 15, by: 2) {
    print(i)
}

// ------------------------------------------------------------------------

// while loop

var noOfLives = 4
while noOfLives > 0 {
    print("Playing")
    noOfLives -= 1
}

// repeat while
// loop at least one time

var steps = 0
repeat {
    print("step : \(steps)")
    steps += 1
} while steps < 10

// nested loop
for i in 1...3 {
    for j in 1...3 {
        if j == 3 {
            break
        }
        print("i = \(i), j = \(j)")
    }
    print("inner loop end")
}

// Labeled Statement with break in loop
outerloop: for i in 1...3 {
    print("labeled statement start")
    innerloop: for j in 1...3 {
        if j == 3 {
            break outerloop
        }

        print("i = \(i), j = \(j)")
    }
    print("beak up to outer loop")
}

// Labeled Statement with continue in loop
// continue restart the loop
outerloop: for i in 1...3 {
    innerloop: for j in 1...3 {
        if j == 3 {
            continue outerloop
        }
        print("i = \(i), j = \(j)")
    }
}

var zz = 1
outerloop: while zz < 3 {
    print("labeled statement while start: \(zz)")
    innerloop: for j in 1...3 {
        if j == 3 {
            zz += 1
            continue outerloop
        }

        print("zz = \(zz), j = \(j)")
    }
    zz += 1
}

// ------------------------ Optional ------------------------

var someValue: Int?
print(someValue ?? "default someValue")

let someValue2: Int? = 5
print(someValue2 ?? "default someValue2")

// 1. Optional Handling (if - statement) / (safe)
if someValue != nil {
    print(someValue!)
} else {
    print("SomeValue is nil")
}

// 2. Optional Binding (if - let) / (safe
/// `if let/if var` optional binding only works when the result of the `right side of the expression is an optional.` If the result of the right side is not an optional, you can not use this optional binding. `The point of this optional binding is to check for nil and only use the variable if it's non-nil.`
///

if let lastRandom = randomInts.last {
    print("Yes, the last random number is : \(lastRandom)")
}

// Below code goes error "Initializer for conditional binding must have Optional type, not 'Bool'"
// if let errorBinding = "".count > 0 {
//    print("yes this string length is grater than 0")
// }

// 3. Guard Statement (Optional Binding)
// Ref: https://www.programiz.com/sites/tutorial2program/files/swift-guard-statement.png
// The guard statement is similar to the if statement with one major difference. The if statement runs when a certain condition is met. However, the guard statement runs when a certain condition is not met.

var ii = 2
while ii <= 5 {
    // guard condition to check the even number
    guard ii % 2 == 0 else {
        ii = ii + 1
        continue
    }
    print(ii)
    ii = ii + 1
}

// guard-let statement
func checkAge() {
    // var age: Int? = 22
    var age: Int?
    guard let myAge = age else {
        print("Age is undefined")
        return
    }
    print("My age is \(myAge)")
}

checkAge()

// guard with multiple conditions
func checkJobEligibility() {
    var age = 33

    guard age >= 18, age <= 40 else {
        print("Not Eligible for Job")
        return
    }

    print("You are eligible for this job")
}

checkJobEligibility()

// 4. Nil-coalescing operator

var nilValue: Int? = 10
let defaultValue = 5
let unwrappedValue: Int = nilValue ?? defaultValue
print(unwrappedValue)

// extension

extension String {
    func removeWhiteSpace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

print("A B C D E F".removeWhiteSpace())
