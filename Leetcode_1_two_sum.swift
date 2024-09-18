//
//  Leetcode_1_two_sum.swift
//  
//
//  Created by Shafiq  Ullah on 9/18/24.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hashMap:[Int: Int] = [:]
        
        for (index,num) in nums.enumerated(){
            let temp = target - num
            
            if let complementIndex = hashMap[temp]{
                return [complementIndex, index]
            }
            
            hashMap[num] = index
        }
        return []
    }
}
