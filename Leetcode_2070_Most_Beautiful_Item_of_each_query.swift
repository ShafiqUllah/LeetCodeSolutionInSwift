class Solution_2070 {
    func maximumBeauty(_ items: [[Int]], _ queries: [Int]) -> [Int] {
        
        var items = items.sorted { $0[0] < $1[0] }
        //print(items)
        var maxVal = 0
        for (idx,val) in items.enumerated(){
            maxVal = max(maxVal, val[1])
            items[idx] = [val[0], maxVal]
        }
        //print(items)
        
        var ans = [Int]()
        
        for query in queries {
            ans.append(customBinarySearch(query))
        }
        
        func customBinarySearch(_ query:Int )-> Int{
            var left = 0
            var right = items.count - 1
            
            var maxBeauty = 0
            var mid = 0
            while left <= right{
                mid = left + (right - left)/2
                
                if items[mid][0] > query{
                    right = mid - 1
                }else{
                    maxBeauty = max(maxBeauty, items[mid][1])
                    left = mid + 1
                }
                
            }
            
            return maxBeauty
        }
        
        
        
        
        
        //print(ans)
        return ans
    }
}

Solution_2070().maximumBeauty([[1,2],[3,2],[2,4],[5,6],[3,5]], [1,2,3,4,5,6])


