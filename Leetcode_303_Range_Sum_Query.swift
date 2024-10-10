class NumArray_303 {

    var arr : [Int]
    init(_ nums: [Int]) {
        arr = nums
        var sum = 0
        for (index,n) in nums.enumerated(){
            arr[index] = sum + n
            sum = arr[index]
        }
        
        print(arr)
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        if left <= 0{
            return arr[right]
        }
        
        return arr[right] - arr[left - 1]
    }
}
