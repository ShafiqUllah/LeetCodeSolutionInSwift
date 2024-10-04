class Solution_13 {
    func romanToInt(_ s: String) -> Int {
        var hashTable: [Character:Int] = [:]
        
        hashTable["I"] = 1
        hashTable["V"] = 5
        hashTable["X"] = 10
        hashTable["L"] = 50
        hashTable["C"] = 100
        hashTable["D"] = 500
        hashTable["M"] = 1000
        
//        let hashTable: [Character:Int] =
//        [
//        "I" : 1,
//        "V" : 5,
//        "X" : 10,
//        "L" : 50,
//        "C" : 100,
//        "D" : 500,
//        "M" : 1000
//        ]
        
        var current = -1
        var previous = -1
        var sum = 0
        
        for c in s.reversed(){
            if let val = hashTable[c]{
                current = val
                
                if(previous <= current){
                    sum += val
                }else{
                    sum -= val
                }
                previous = val
                
            }
        }
        return sum
    }
    
    
}
