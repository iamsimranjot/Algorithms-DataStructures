// Linear Search

public func linearSearch <T: Equatable>(_ array: [T], _ object: T) -> Int? {
    
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    
    return nil
}

/* Not every type in Swift can be compared with the equal to operator (==). If you create your own class or structure to represent a complex data model, for example, then the meaning of “equal to” for that class or structure is not something that Swift can guess for you. Because of this, it is not possible to guarantee that this code will work for every possible type T, and an appropriate error is reported when you try to compile the code.

    All is not lost, however. The Swift standard library defines a protocol called
    Equatable, which requires any conforming type to implement the equal to operator
    (==) and the not equal to operator (!=) to compare any two values of that type.
    All of Swift’s standard types automatically support the Equatable protocol.
 */