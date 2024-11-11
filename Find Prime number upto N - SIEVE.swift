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
