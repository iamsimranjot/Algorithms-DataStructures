public struct HashSet<T: Hashable> {
    fileprivate var dictionary = [T : Bool]()
    
    public mutating func insert(_ element: T){
        dictionary[element] = true
    }
    
    public mutating func remove(_ element: T) {
        dictionary[element] = nil
    }
    
    public func contains(_
        element: T) -> Bool {
        return dictionary[element] != nil
    }
    
    public func allElements() -> [T] {
        return Array(dictionary.keys)
    }
    
    public var count: Int {
        return dictionary.count
    }
    
    public var isEmpty: Bool {
        return dictionary.isEmpty
    }
}

extension HashSet {
    
    // Union
    
    public func union(_ inSet: HashSet<T>) -> HashSet<T> {
        var combinedSet = HashSet<T>()
        
        for object in dictionary.keys {
            combinedSet.insert(object)
        }
        for object in inSet.dictionary.keys {
            combinedSet.insert(object)
        }
        return combinedSet
    }
    
    // Intersection
    
    public func intersect(_ inSet: HashSet<T>) -> HashSet<T> {
        var commonSet = HashSet<T>()
        
        for object in dictionary.keys {
            if inSet.contains(object) {
                commonSet.insert(object)
            }
        }
        return commonSet
    }
    
    // Difference
    
    public func difference(_ inSet: HashSet<T>) -> HashSet<T> {
        var diffSet = HashSet<T>()
        
        for object in dictionary.keys {
            if !inSet.contains(object) {
                diffSet.insert(object)
            }
        }
        return diffSet
    }
}
