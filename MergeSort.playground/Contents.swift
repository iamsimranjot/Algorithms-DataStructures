//Top Down (Recursive)

func mergeSort<T: Comparable>(_ array:[T]) -> [T] {
    
    guard array.count > 1 else {
        return array
    }
    
    let mid = array.count / 2
    let leftArray = mergeSort(Array(array[0 ..< mid]))
    let rightArray = mergeSort(Array(array[mid ..< array.count]))
    return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge<T: Comparable>(leftPile:[T], rightPile:[T]) -> [T] {
    
    var leftIndex = 0
    var rightIndex = 0
    var orderedPile = [T]()
    
    while leftIndex < leftPile.count && rightIndex < rightPile.count {
        
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        } else if rightPile[rightIndex] < leftPile[leftIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        } else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    
    return orderedPile
}

// Bottom Up (Iterative)


func mergeSortBottomUp<T>(_ a: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    let n = a.count
    
    var array = [a, a]  // 2D Array One for reading & other for making changes and returning.
    var d = 0           // Index for switching btw the "array"
    
    var width = 1
    while width < n {
        
        var i = 0
        while i < n {
            
            var j = i
            var l = i
            var r = i + width
            
            let lmax = min(l + width, n)
            let rmax = min(r + width, n)
            
            while l < lmax && r < rmax {
                if isOrderedBefore(array[d][l], array[d][r]) {
                    array[1 - d][j] = array[d][l]
                    l += 1
                } else {
                    array[1 - d][j] = array[d][r]
                    r += 1
                }
                j += 1
            }
            while l < lmax {
                array[1 - d][j] = array[d][l]
                j += 1
                l += 1
            }
            while r < rmax {
                array[1 - d][j] = array[d][r]
                j += 1
                r += 1
            }
            
            i += width*2
        }
        
        width *= 2
        d = 1 - d
    }
    return array[d]
}

