// Binary Search - Recursive

func binarySearch<T: Comparable>(_ array: [T], key: T, range: Range<Int>) -> Int? {
    
    if range.lowerBound >= range.upperBound {
        // If we get here, then the search key is not present in the array.
        return nil
    } else {
        // Calculate where to split the array.
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
         // Is the search key in the left half?
        if array[midIndex] > key {
            return binarySearch(array, key: key, range: range.lowerBound ..< midIndex)
            
        // Is the search key in the right half?
        } else if array[midIndex] < key {
            return binarySearch(array, key: key, range: midIndex + 1 ..< range.upperBound)
           
        // If we get here, then we've found the search key!
        } else {
            return midIndex
        }
    }
}

// Binary Search - Iterative

func binarySearch<T: Comparable>(_ array: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = array.count
    
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        
        if array[midIndex] == key {
            return midIndex
            
        } else if array[midIndex] < key {
            lowerBound = midIndex + 1
            
        } else {
            upperBound = midIndex
        }
    }
    
    return nil
}
