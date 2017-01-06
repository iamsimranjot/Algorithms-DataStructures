/*
 Stack
 A stack is like an array but with limited functionality. You can only push
 to add a new element to the top of the stack, pop to remove the element from
 the top, and peek at the top element without popping it off.
 A stack gives you a LIFO or last-in first-out order. The element you pushed
 last is the first one to come off with the next pop.
 Push and pop are O(1) operations.
 */

public struct Stack <T>{
    
    fileprivate var stackArray = [T]()
    
    // Returns the count of elements present in the Stack
    public var count : Int {
        return stackArray.count
    }
    
    // Check to see if the stack is empty.
    public var isEmpty: Bool {
        return stackArray.isEmpty
    }
    
    // Add an element to the top of the stack.
    public mutating func push(_ element: T) {
        stackArray.append(element)
    }
    
    // Remove and return the first element from the stack.
    public mutating func pop() -> T? {
        return stackArray.popLast()
    }
    
    // Look at the first element from the stack.
    public func peek() -> T? {
        return stackArray.last
    }
}

//To Initilize the Struct
var stack = Stack(stackArray: ["Hey", "Hi", "Lol"])
