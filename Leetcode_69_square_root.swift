class Solution_69 {
    func mySqrt(_ x: Int) -> Int {
            if x < 2 {
                return x
            }  // Edge case for 0 and 1

            var left = 1
            var right = x
            var result = 0

            while left <= right {
                let mid = left + (right - left) / 2
                if mid * mid <= x {
                    result = mid  // Update result when mid*mid <= x
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
            return result
        }
}

print(Solution_69().mySqrt(25))
