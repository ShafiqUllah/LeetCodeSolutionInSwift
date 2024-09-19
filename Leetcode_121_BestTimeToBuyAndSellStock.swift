//
//  Leetcode_1_two_sum.swift
//  
//
//  Created by Shafiq  Ullah on 9/18/24.
//

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        var buy = prices[0]
        prices.dropFirst()
        for sell in prices {
            if  sell > buy{
                profit = max(profit, sell - buy)
            }else{
                buy = sell
            }
        }
        
        return profit
    }
