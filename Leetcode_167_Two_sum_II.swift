class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var startIndex = 0
        var endIndex = numbers.count - 1
        
        while startIndex < endIndex{
            if numbers[startIndex] + numbers[endIndex] == target {
                return [startIndex + 1, endIndex + 1]
            }
            
            if numbers[startIndex] + numbers[endIndex] < target {
                startIndex += 1
            }else{
                endIndex -= 1
            }
        }
        
        return []
    }
}
