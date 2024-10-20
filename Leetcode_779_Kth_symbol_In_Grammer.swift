class Solution_779 {
    func kthGrammar(_ n: Int, _ k: Int) -> Int {
        
        if n == 1 && k == 1{
            return 0
        }
        //        print(k)
        
        let length = Int(pow(2.0, Double(n - 1)))
        //        print(length)
        
        let mid = (length / 2) - 1
        
        //print("k \(k) len \(length)  mid \(mid)")

        if k <= mid { // go left
            return kthGrammar(n - 1, k)
        }else{ //go right
            let mirrorIndex = k - mid
            let mirorBit = kthGrammar(n - 1, mirrorIndex)
            return 1 - mirorBit // flip
            
        }
    }
}
