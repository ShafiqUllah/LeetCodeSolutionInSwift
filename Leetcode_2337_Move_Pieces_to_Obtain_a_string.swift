class Solution {
    func canChange(_ start: String, _ target: String) -> Bool {
        var arrStart = Array(start)
        var arrTraget = Array(target)
        
        var startPointer = 0
        var targetPointer = 0
        
        let filterStart = arrStart.filter({$0 != "_"})
        let filterTarget = arrTraget.filter({$0 != "_"})
        
        guard filterStart.count == filterTarget.count else{
            return false
        }
        
        let n = start.count
        
        while startPointer < n && targetPointer < n{
            
            // skip spaces
            while startPointer < n && arrStart[startPointer] == "_" { startPointer += 1}
            while targetPointer < n && arrTraget[targetPointer] == "_" { targetPointer += 1}
            
            if startPointer < n && targetPointer < n{
                if arrStart[startPointer] != arrTraget[targetPointer]{
                    return false
                }
                
                if arrStart[startPointer] == "L" && startPointer < targetPointer { return false }
                if arrStart[startPointer] == "R" && startPointer > targetPointer { return false }
            }
            
            startPointer += 1
            targetPointer += 1
        }
        
        
        return true
    }

}
