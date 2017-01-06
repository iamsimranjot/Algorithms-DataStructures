/*
 First-in first-out queue (FIFO)
 New elements are added to the end of the queue. Dequeuing pulls elements from
 the front of the queue.
 Enqueuing and dequeuing are O(1) operations.
 */

public struct Queue <T> {
    
    fileprivate var queueArrey = [T?]()
    fileprivate var head = 0
    
    public var count : Int {
        return queueArrey.count - head
    }
    
    // Check to see if the queue is empty.
    public var isEmpty : Bool {
        return count == 0
    }
    
    // Adds an element to the end of the queue.
    public mutating func enqueue(_ element: T) {
        queueArrey.append(element)
    }
    
    // Remove and return the first element in the queue.
    public mutating func dequeue() -> T? {
        guard head < count, let element = queueArrey[head] else {
            return nil
        }
        
        queueArrey[head] = nil
        head += 1
        
        /* This calculates the percentage of empty spots at the beginning as a ratio of the total array size. If more than 25% of the array is unused, we chop off that wasted space. However, if the array is small we don't want to resize it all the time, so there must be at least 50 elements in the array before we try to trim it.
            
            You can tweak these numbers according to your app.
        */
        
        let percentage = Double(head) / Double(count)
        if count > 50 && percentage > 0.25 {
            queueArrey.removeFirst(head)
            head = 0
        }
        
        return element
    }
    
    // Return the first element in the queue.
    public func peek() -> T? {
        if isEmpty {
            return nil
        } else {
            return queueArrey[head]
        }
    }
}
