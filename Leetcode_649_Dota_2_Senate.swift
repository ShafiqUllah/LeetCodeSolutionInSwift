class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var qr = [Int]()
        var qd = [Int]()
        
        let n = senate.count
        
        for (index, ch) in senate.enumerated(){
            if ch == "R"{
                qr.append(index)
            }else {
                qd.append(index)
            }
        }
        
        while !qr.isEmpty && !qd.isEmpty{
            
            let r = qr.removeFirst()
            let d = qd.removeFirst()
            
            if r < d {
                qr.append(r + n)
            }else{
                qd.append(d + n)
            }
        }
        
        return qr.isEmpty ? "Dire" : "Radiant"
        
    }
}
