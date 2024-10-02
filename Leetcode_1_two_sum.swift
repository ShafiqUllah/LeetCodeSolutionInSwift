//
//  Leetcode_1_two_sum.swift
//  
//
//  Created by Shafiq  Ullah on 9/18/24.
//

import Foundation

class Solution_Using_Hash {
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

class Solution_Using_two_pointer {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let forResult = nums
        let nums = nums.sorted()
        var left = 0
        var rifht = nums.count - 1
        var first_item: Int = -1
        var second_item : Int = -1
        var result : [Int] = []
        
        while left < rifht{
            if target == nums[left] + nums[rifht]{
                first_item = nums[left]
                second_item = nums[rifht]
                break
            }else if target > nums[left] + nums[rifht]{
                left += 1
            }else{
                rifht -= 1
            }
        }
        
        if first_item == -1 || second_item == -1{
            return []
        }
        
        for (index, n) in forResult.enumerated(){
            if n == first_item || n == second_item {
                result.append(index)
            }
        }
        
        return result
    }
}
