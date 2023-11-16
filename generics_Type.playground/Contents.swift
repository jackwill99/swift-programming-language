import UIKit

// Swift Generics allows us to create a single function and class (or any other types) that can be used with different data types.

class Information<T> {
    var infos: [T] = []

    init(value: T...) {
        infos.append(contentsOf: value)
    }

    public func add(value: T) -> [T] {
        infos.append(value)
        return infos
    }

    // with method overloading
    public func add(contentsOf value: T...) -> [T] {
        infos.append(contentsOf: value)
        return infos
    }
}

var intObj = Information<Int>(value: 1, 2, 3, 4)
intObj.add(value: 5)
intObj.add(contentsOf: 6, 7, 8)
print(intObj.infos)
