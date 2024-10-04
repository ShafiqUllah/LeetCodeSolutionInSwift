class Solution_88 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var num2 = nums2
        var num1 = nums1
        var returnVal : [Int] = []
        var m = m
        var n = n
        let ret_length = m + n
        
        while num2.count != 0 && num1.count != 0 && m != 0 && n != 0{
            let f = num1.first!
            let s = num2.first!
            
            if f < s{
                returnVal.append(f)
                num1.removeFirst()
                m -= 1
            }else{
                returnVal.append(s)
                num2.removeFirst()
                n -= 1
            }
            //print("->\(returnVal) 1 -> \(num1.count) ->\(num2.count)")
        }
        
        //print(returnVal)
        
        while num2.count != 0  {
            
            let s = num2.removeFirst()
            returnVal.append(s)
            
        }
        
        //print(returnVal)
        
        while num1.count != 0  {
            
            let s = num1.removeFirst()
            returnVal.append(s)
            
        }
        //print(returnVal)
        for i in 0..<ret_length{
            nums1[i] = returnVal[i]
        }
        
        //print(returnVal)
    }
}


//best solution from chatgpt
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = m - 1      // Pointer for nums1 (excluding the zeroes at the end)
    var j = n - 1      // Pointer for nums2
    var k = m + n - 1  // Pointer for the final position in nums1
    
    // Merge in reverse order
    while i >= 0 && j >= 0 {
        if nums1[i] > nums2[j] {
            nums1[k] = nums1[i]
            i -= 1
        } else {
            nums1[k] = nums2[j]
            j -= 1
        }
        k -= 1
    }
    
    // If there are any remaining elements in nums2, copy them
    while j >= 0 {
        nums1[k] = nums2[j]
        j -= 1
        k -= 1
    }
}

