class Solution_1942 {
    func smallestChair(_ times: [[Int]], _ targetFriend: Int) -> Int {
        var chairs = Array(repeating: -1, count: times.count)
        
        let targetFriendArraivalTime = times[targetFriend][0]
        
        let sortedTimes = times.sorted {
            $0[0] < $1[0]
        }
        
        //print(targetFriendArraivalTime)
        
        for i in 0..<sortedTimes.count{
            let arrival = sortedTimes[i][0]
            let departure = sortedTimes[i][1]
            
            for j in 0..<chairs.count{
                if chairs[j] <= arrival{
                    chairs[j] = departure
                    
                    if arrival == targetFriendArraivalTime {
                        return j
                    }
                    break
                }
            }
        }
        
        return -1
    }
}

print(Solution_1942().smallestChair([[1,4],[2,3],[4,6]], 1))
