func permute<T>(_ elements: [T]) -> [[T]] { // permutation = position metters
    var result = [[T]]()   // To store the final permutations
    var current = elements // Create a mutable copy of the input elements for swapping

    func backtrack(_ start: Int) {
        // Base case: if we have a full permutation, add it to the result
        if start == current.count {
            result.append(current)
            return
        }
        
        // Recursive case: swap each element in the current position
        for i in start..<current.count {
            current.swapAt(start, i) // Choose by swapping
            backtrack(start + 1)     // Recurse with the next starting index
            current.swapAt(start, i) // Undo the swap to backtrack
        }
    }

    backtrack(0)
    return result
}



// Example usage
let elements = ["a", "b", "c"]
let permutations = permute(elements)
print(permutations) // [["a", "b", "c"], ["a", "c", "b"], ["b", "a", "c"], ["b", "c", "a"], ["c", "b", "a"], ["c", "a", "b"]]

func combine<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()   // To store the final combinations
    var current = [T]()    // To store the current combination being built

    func backtrack(_ start: Int) {
        // Base case: if the current combination has reached the desired size, add it to the result
        if current.count == k {
            result.append(current)
            return
        }
        
        // Recursive case: iterate over possible elements starting from `start`
        for i in start..<elements.count {
            current.append(elements[i]) // Choose the current element
            backtrack(i + 1)            // Recurse with the next index
            current.removeLast()        // Backtrack to try another element
        }
    }

    // Start the backtracking with the first index
    backtrack(0)
    return result
}

// Example usage
let elements = ["a", "b", "c", "d"]
let k = 2
let combinations = combine(elements, k)
print(combinations) //[["a", "b"], ["a", "c"], ["a", "d"], ["b", "c"], ["b", "d"], ["c", "d"]]



//Permulation not swaping original element

func permute<T>(_ elements: [T]) -> [[T]] {
    var result = [[T]]()       // To store the final permutations
    var current = [T]()         // To store the current permutation being built
    var used = Array(repeating: false, count: elements.count) // Track used elements
    
    func backtrack() {
        // Base case: if we have a full permutation, add it to the result
        if current.count == elements.count {
            result.append(current)
            return
        }
        
        // Recursive case: iterate through elements to build permutations
        for i in 0..<elements.count {
            if used[i] { continue }    // Skip if the element is already used
            
            used[i] = true             // Mark the element as used
            current.append(elements[i]) // Add the element to the current permutation
            backtrack()                // Recurse to build the rest of the permutation
            current.removeLast()       // Backtrack by removing the last element
            used[i] = false            // Unmark the element for the next iteration
        }
    }
    
    backtrack()
    return result
}

// Example usage
let elements = ["a", "b", "c"]
let permutations = permute(elements)
print(permutations)


