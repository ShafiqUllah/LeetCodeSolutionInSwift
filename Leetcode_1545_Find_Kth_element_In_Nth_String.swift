class Solution {
    func findKthBit(_ n: Int, _ k: Int) -> Character {
        if n == 1 {
            return "0"
        }
        
        let length = Int(pow(2.0, Double(n))) - 1
        let mid = length / 2 + 1
        
        if k == mid {
            return "1"
        }else if k < mid{
            return findKthBit(n - 1, k)
        }else{
            let mirrorIndex = length - k + 1
            let mirorBit = findKthBit(n - 1, mirrorIndex)
            return mirorBit == "0" ? "1" : "0"
        }
    }
}
