func binarySearch<T: Comparable>(_ array: [T], target: T, left: Int, right: Int) -> Int {
    var left = left
    var right = right

    while left <= right {
        let mid = left + (right - left) / 2
        if array[mid] == target {
            return mid
        } else if array[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }

    return -1 // Target not found
}



//this will return left most index
func binarySearchLeft(_ nums: [Int], _ left: Int, _ right: Int, _ target: Int) -> Int {
    var left = left
    var right = right
    var result = -1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] >= target {
            result = mid
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return result
}

//This will return right most index
private func binarySearchRight(_ nums: [Int], _ left: Int, _ right: Int, _ target: Int) -> Int {
    var left = left
    var right = right
    var result = -1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] <= target {
            result = mid
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return result
}

binarySearchLeft([1,2,3,4,5,6,7], 1, 6, 8)


