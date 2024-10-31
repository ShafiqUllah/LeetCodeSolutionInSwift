class Solution {
    func hammingWeight(_ n: Int) -> Int {
        let binaryStr = String(n, radix: 2)

        var ans = 0

        for c in binaryStr{
            if c == "1"{
                ans += 1
            }
        }

        return ans
    }
}


// chargit solution
func hammingWeight(_ n: Int) -> Int {
    var count = 0
    var number = n

    while number != 0 {
        count += number & 1
        number >>= 1
    }

    return count
}

