class Solution {
    func minSwaps(_ s: String) -> Int {
        var count = 0
        var arr = Array(s)
        for i in 0..<arr.count{
            if arr[i] == "["{
                count += 1
            }else if arr[i] == "]" && count > 0 {
                count -= 1
            }
        }
        
        return (count + 1)/2
    }
}
