class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var ans  = [Int]()
        
        
        for i in 0..<prices.count{
            let tempArray = prices[i+1..<prices.count]
            let discount = tempArray.first { num in
                return num <= prices[i]
            }
            ans.append(prices[i] - (discount ?? 0))
        }
        
        return ans
    }
}
