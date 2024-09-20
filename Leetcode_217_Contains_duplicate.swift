//
//  Leetcode_1_two_sum.swift
//  
//
//  Created by Shafiq  Ullah on 9/18/24.
//

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var res : Bool = false
        var hashMap : [Int : Int] = [:]
        for (index, num) in nums.enumerated(){
            if let temp = hashMap[num]{
                res = true
                break
            }
            hashMap[num] = index
        }
        
        return res
    }
}
