class Solution {
    func primeSubOperation(_ nums: [Int]) -> Bool {
        
        //var isPrime = Array(repeating: true, count: 1000)
        
        func sieve(upto n:Int) -> [Int]{
            guard n >= 2 else{
                return []
            }
            
            var isPrime = Array(repeating: true, count: n + 1)
            isPrime[0] = false
            isPrime[1] = false
            
            
            for i in 2...Int(sqrt(Double(n))){
                if isPrime[i]{
                    // mark all multiple to false
                    for multiple in stride(from: i * i, through: n, by: i){
                        isPrime[multiple] = false
                    }
                }
            }
            
            var primes = [Int]()
            
            for i in 2...n{
                if isPrime[i]{
                    primes.append(i)
                }
            }
            
            return primes
        }
        
        var primeArr = sieve(upto: 1000)
        var nums = nums
        var n = nums.count
        
        for i in stride(from: n - 2, through: 0, by: -1){
            if nums[i] < nums[i + 1]{
                continue
            }
            
            for p in primeArr{
                if p >= nums[i]{
                    break
                }
                
                if nums[i] - p < nums[i + 1]{
                    nums[i] -= p
                    break
                }
            }
            
            if nums[i] >= nums[i + 1]{
                return false
            }
        }
        
        
        
        return true
    }
}


